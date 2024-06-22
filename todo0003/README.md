# TODO

- date reported: 
- compiler: 
- bug report URL: 
- status: 
- action to complete when fixed: 

## Bug report message

Cray Fortran 16 has wrong answers for bug0006 case. Make minimum reproducer.

Cray Fortran 16 compiled all 3 in bug0006, likely faster than ifx.

Cray Fortran 16 output for pdim_12.f90:

```
 0. [correct, line 21]
 0. [wrong, line 26]
 -1.5 [correct, line 31]
 0.5 [correct, line 36]
 1. [wrong, line 40]
 1.15462384672275279E-310 [wrong, line 44]
 16. [correct, line 48]
```
