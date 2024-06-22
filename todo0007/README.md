# TODO

- date reported: 
- compiler: nvfortran
- bug report URL: 
- status: not reported yet
- action to complete when fixed: Add optional extra variable output in the form of a namelist string to nmllog.

## Bug report message

    $ nvfortran todo0007.f90 
    $ ./a.out 
    FIO-F-220/internal namelist write/internal file/write after last internal record.
     In source file todo0007.f90, at line number 12

Expected output (gfortran):

    $ gfortran todo0007.f90 
    $ ./a.out 
     &LIST  X=12345      ,  /
