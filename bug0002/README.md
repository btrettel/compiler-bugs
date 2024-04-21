# Bug 0002

- date reported: 2024-03-16
- compiler: ifx 2024.0.2
- bug report URL: <https://community.intel.com/t5/Intel-Fortran-Compiler/ifx-error-stop-line-with-concatenation-operator-produces/td-p/1581108>
- status (2024-03-27): bug confirmed (bug ID CMPLRLLVM-56977), will be fixed in ifx 2024.2
- action to complete when fixed: In [FLT](https://github.com/btrettel/flt)'s [checks.f90](https://github.com/btrettel/flt/blob/main/src/checks.f90) subroutine `assert`, change `error stop full_message` to `error stop full_message = "***" // new_line("a") // "ASSERTION FAILED." // message_`, eliminate the variable `full_message` from `assert`, and remove the associated code comment.

## Bug report message

### ifx error stop line with concatenation operator produces gibberish

Minimum example is below. The latest ifx produces a gibberish error stop message. I believe this is valid Fortran 2018.

    program error_stop_gibberish

    implicit none

    character(len=5) :: x = "fails"

    error stop "This " // x

    end program error_stop_gibberish

Output:

    $ ifx --version
    ifx (IFX) 2024.0.2 20231213
    Copyright (C) 1985-2023 Intel Corporation. All rights reserved.

    $ ifx -stand:f18 error_stop_gibberish.f90 
    $ ./a.out 
    T�3;�This

The precise message printed varies from run to run.

gfortran and nvfortran both give the expected output including "This fails". The output varies from compiler to compiler as some add the prefix "ERROR STOP" or some variation to the message, and gfortran prints a backtrace (which is nice).

This is not a showstopper as concatenating into another string and then using that string on the error stop line works fine. So I don't expect this potential bug report to be high priority.
