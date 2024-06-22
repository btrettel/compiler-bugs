# TODO

- date reported: 
- compiler: 
- bug report URL: 
- status: 
- action to complete when fixed: 

## Bug report message

A type-bound operator didn't work:

    $ lfortran typebound.f90 
    semantic error: Type mismatch in binary operator, the types must be compatible
      --> typebound.f90:45:5
       |
    45 | z = x * y
       |     ^   ^ type mismatch (a and b)


    Note: Please report unclear, confusing or incorrect messages as bugs at
    https://github.com/lfortran/lfortran/issues.

Trying an `interface` block didn't work either:

    $ lfortran interface.f90 
    semantic error: Type mismatch in binary operator, the types must be compatible
      --> interface.f90:48:5
       |
    48 | z = x * y
       |     ^   ^ type mismatch (a and b)


    Note: Please report unclear, confusing or incorrect messages as bugs at
    https://github.com/lfortran/lfortran/issues.
