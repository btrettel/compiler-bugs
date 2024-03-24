# compiler-bugs

A collection of bug reports I made for various Fortran compilers.

## to-do

- crayftn has zero exit code for `error stop "message"`
    - [Fortran 2023 draft section 11.4, p. 213](https://j3-fortran.org/doc/year/23/23-007r1.pdf): > If the stop-code in an `ERROR STOP` statement is of type character or does not appear, it is recommended that a processor-dependent nonzero value be supplied as the process exit status, if the processor supports that concept.
- FTN95 bug in 2024-02-24 personal log.
