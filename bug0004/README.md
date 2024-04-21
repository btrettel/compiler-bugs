# Bug 0004

- date reported: not reported yet
- compiler: nvfortran 24.3-0
- bug report URL: (n/a)
- status: (n/a)
- action to complete when fixed: In [FLT](https://github.com/btrettel/flt), move module procedure `f` from autodiff.f90 to an internal procedure in test_autodiff.f90.

## Bug report message

### nvfortran 24.3 false compiler error for type-bound operator

This seems to be a strange bug. Here's the reproducer:

    module bug0004_mod

    implicit none
    private

    type, public :: t
        real :: v
    contains
        procedure, private :: t_exp
        generic, public :: operator(**) => t_exp
    end type t

    contains

    elemental function t_exp(t_in, int_in)
        class(t), intent(in) :: t_in
        integer, intent(in)  :: int_in
        
        type(t) :: t_exp

        t_exp%v  = t_in%v**int_in
    end function t_exp

    end module bug0004_mod

    program bug0004

    use bug0004_mod, only: t
    implicit none

    type(t) :: x, y

    x%v = 5.0

    ! Commenting out the next two lines eliminates the error. But why?
    y = x**7
    print *, y%v

    y = f(x)
    print *, y%v

    contains

    ! If `f` is a module procedure instead of an internal procedure, there are no errors.

    function f(x)
        ! Uncommenting this makes no difference.
        ! use bug0004_mod, only: t
        
        type(t), intent(in) :: x
        
        type(t) :: f
        
        f = x**2
    end function f

    end program bug0004

Here's the command line log:

    $ nvfortran --version

    nvfortran 24.3-0 64-bit target on x86-64 Linux -tp haswell 
    NVIDIA Compilers and Tools
    Copyright (c) 2024, NVIDIA CORPORATION & AFFILIATES.  All rights reserved.
    $ nvfortran bug0004.f90
    NVFORTRAN-S-0099-Illegal use of operator ** on a derived type (bug0004.f90: 54)
    NVFORTRAN-S-0099-Illegal use of derived type (bug0004.f90: 54)
    NVFORTRAN-S-0148-Reference to derived type required (bug0004.f90: 54)
      0 inform,   0 warnings,   3 severes, 0 fatal for f

The use of the `**` operator here is not illegal as far as I'm aware. gfortran and ifx both have no problem with this code. And neither does nvfortran if I comment out two lines labeled above! Alternatively, if I make `f` a module procedure, there is no error.

Also: While I can't make a simple reproducer, in the original code, there were similar compiler errors for the `*`, `/`, `+`, and `-` operators as the function I was using there intentionally had all operators.
