# Bug 0004

- date reported: 2024-04-21
- compiler: nvfortran 24.3-0
- bug report URL: <https://forums.developer.nvidia.com/t/nvfortran-24-3-false-compiler-error-for-type-bound-operator/290383>
- status: reported (TPR #35548)
- action to complete when fixed: In [FLT](https://github.com/btrettel/flt), move module procedure `f` from autodiff.f90 to an internal procedure in test_autodiff.f90.

## Bug report message

### nvfortran 24.3 false compiler error for type-bound operator

I've encountered a likely bug with type-bound operators. Here's the reproducer:

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

    $ uname -a
    Linux trident 5.15.0-102-generic #112~20.04.1-Ubuntu SMP Thu Mar 14 14:28:24 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux
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

Also: You should be able to change the operator to `*`, `/`, `+`, or `-` and get the same false error as with `**`. I only checked minimal reproducers for `**` and `*`, but in the original code I got errors for all 5 operators.
