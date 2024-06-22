# Bug 0001

- date reported: 2023-07-02
- compiler: lfortran 0.19.0
- bug report URL: <https://github.com/lfortran/lfortran/issues/1921>
- status: fixed

## Bug report message

### Kind parameter specified with a named constant fails

Minimum working example:

    program test

    implicit none
    integer, parameter :: RP = selected_real_kind(15, 307)
    real(kind=RP), parameter :: PI = 3.141592653589793_RP
    write(unit=*, fmt=*) PI

    end program test

Command line output:

    lfortran -c -o kind1.o kind1.f90 
    semantic error: Variable 'RP' not declared
     --> kind1.f90:5:34
      |
    5 | real(kind=RP), parameter :: PI = 3.141592653589793_RP
      |                                  ^^^^^^^^^^^^^^^^^^^^ 


    Note: if any of the above error or warning messages are not clear or are lacking
    context please report it to us (we consider that a bug that must be fixed).

Clearly LFortran is recognizing `RP` the first time it appears in the line, but not the second.

Replacing the named constant `RP` with a literal integer works.

Version:

    lfortran --version
    LFortran version: 0.19.0
    Platform: Linux
    Default target: x86_64-pc-linux-gnu

I also tried with the latest development tarball with the same result:

    ./lfortran --version
    LFortran version: 0.19.0-121-g917611d90
    Platform: Linux
    Default target: x86_64-pc-linux-gnu
