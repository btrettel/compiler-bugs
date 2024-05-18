A type-bound operator didn't work:

    $ lfortran typebound.f90 
    semantic error: Type mismatch in binary operator, the types must be compatible
      --> test.f90:45:5
       |
    45 | z = x * y
       |     ^   ^ type mismatch (a and b)


    Note: Please report unclear, confusing or incorrect messages as bugs at
    https://github.com/lfortran/lfortran/issues.

Trying an `interface` block didn't work either:

    $ lfortran interface.f90 
    semantic error: Type mismatch in binary operator, the types must be compatible
      --> test2.f90:48:5
       |
    48 | z = x * y
       |     ^   ^ type mismatch (a and b)


    Note: Please report unclear, confusing or incorrect messages as bugs at
    https://github.com/lfortran/lfortran/issues.
