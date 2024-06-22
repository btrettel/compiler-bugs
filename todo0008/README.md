# TODO

- date reported: 
- compiler: nvfortran
- bug report URL: 
- status: not reported yet
- action to complete when fixed: none

## Bug report message

nvfortran appears to be incapable of used-defined derived type `read` to a `character` variable ("internal file").

    $ nvfortran todo0008.f90 
    $ ./a.out 
        0.000000              212 
     invalid unit number
