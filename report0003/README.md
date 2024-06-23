# Report 0003

- date reported: 2024-03-31
- compiler: nvfortran 24.3-0
- bug report URL: <https://forums.developer.nvidia.com/t/nvfortran-24-3-false-warning-for-namelist-variable-that-is-also-a-dummy-argument/288003>
- status: reported (TPR #35450)

## Bug report message

### nvfortran 24.3 false warning for namelist variable that is also a dummy argument

Here's a reproducer:

    module bug0003_mod

    implicit none

    public :: a

    contains

    subroutine a(x)
        real, intent(in) :: x
        
        ! Comment out the namelist line and nvfortran removes the false warning.
        namelist /bugnml/ x
        
        write(*, *) x
    end subroutine a

    end module bug0003_mod

    program bug0003

    use bug0003_mod, only: a
    implicit none

    call a(1.0)

    end program bug0003

I think nvfortran has a false warning when compiling:

    $ nvfortran --version
    
    nvfortran 24.3-0 64-bit target on x86-64 Linux -tp haswell 
    NVIDIA Compilers and Tools
    Copyright (c) 2024, NVIDIA CORPORATION & AFFILIATES.  All rights reserved.
    $ nvfortran bug0003.f90 
    NVFORTRAN-W-0194-INTENT(IN) argument cannot be defined - x (bug0003.f90)
      0 inform,   1 warnings,   0 severes, 0 fatal for bug0003

Maybe this code isn't standards compliant, so in that case the warning isn't false. I'm not an expert on that, but I did search for `namelist` in [the most recent standards document](https://j3-fortran.org/doc/year/24/24-007.pdf) and didn't see anything forbidding this. I can say that neither gfortran or ifx have any warnings or errors when compiled with standards checking and all the pedantic warnings enabled. And the warning message doesn't make sense as `x` is defined.

Here's a previous bug that seems similar: <https://forums.developer.nvidia.com/t/incorrect-warning-for-intent-in-pointer-to-type-in-nvfortran-22-1/201471>
