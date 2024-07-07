# TODO

- date reported: 
- compiler: nvfortran
- bug report URL: 
- status: not reported yet
- action to complete when fixed: Change test_units.f90 to enable this test for nvfortran.

## Bug report message

TODO: nvfortran seems to return garbage for derived-type I/O to internal variables. For example:

    vol%v = 12.345_WP
    write(unit=quantity_string, fmt="(dt'f'(6, 3))") vol

Note that this works fine when writing to a file or stdout.
