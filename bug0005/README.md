# Bug 0004

- date reported: not reported yet
- compiler: ifx 2024.1.0
- bug report URL: (n/a)
- status: (n/a)
- action to complete when fixed: In [FLT](https://github.com/btrettel/flt), in the Makefile, change `-check all,nouninit` to `-check all`.

## Bug report message

### ifx 2024.1.0 `-check uninit` false positive when reading namelist in external file with multiple lines

I recently upgraded to ifx 2024.1.0 and was excited to try the new MemorySanitizer. Unfortunately, there appears to be a false positive uninitialized value when reading namelist files if a namelist is spread across multiple lines. My guess is that ifx is checking whether each line has an uninitialized variable, when it should check at the end of the namelist.

To make the reproducer simpler, I tried putting the namelist in a `character` variable, but the bug doesn't appear in that case. The bug appears to require an external file. I have a file which passes and a file which fails. You can see in the output where the failure occurs.

Reproducer:

passes.nml:

    &bug x=1 /

fails.nml:

    &bug
    x=1
    /

bug0005.nml:

    program bug0005

    implicit none

    integer :: nml_unit, x

    namelist /bug/ x

    open(newunit=nml_unit, file="passes.nml", status="old", action="read")
    read(unit=nml_unit, nml=bug)
    close(unit=nml_unit)

    print *, x

    open(newunit=nml_unit, file="fails.nml", status="old", action="read")
    read(unit=nml_unit, nml=bug)
    close(unit=nml_unit)

    print *, x

    end program bug0005

Command line log:

    $ ifx --version
    ifx (IFX) 2024.1.0 20240308
    Copyright (C) 1985-2024 Intel Corporation. All rights reserved.
    
    $ ifx -check all bug0005.f90
    $ ./a.out
               1
    ==481024==WARNING: MemorySanitizer: use-of-uninitialized-value
        #0 0x5a5d34 in for__characterize_LUB_buffer (/home/ben/git/compiler-bugs/bug0005/a.out+0x5a5d34) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #1 0x5a6495 in for__get_s (/home/ben/git/compiler-bugs/bug0005/a.out+0x5a6495) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #2 0x4e3b70 in for__lex_getc for_rseq_nml.c
        #3 0x4e6aa9 in process_numeric for_rseq_nml.c
        #4 0x4db3c4 in for__nml_lex for_rseq_nml.c
        #5 0x4d1d07 in for_read_seq_nml (/home/ben/git/compiler-bugs/bug0005/a.out+0x4d1d07) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #6 0x491cc4 in MAIN__ (/home/ben/git/compiler-bugs/bug0005/a.out+0x491cc4) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #7 0x40cf98 in main (/home/ben/git/compiler-bugs/bug0005/a.out+0x40cf98) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #8 0x7ff85f74f082 in __libc_start_main /build/glibc-e2p3jK/glibc-2.31/csu/../csu/libc-start.c:308:16
        #9 0x40ce6d in _start (/home/ben/git/compiler-bugs/bug0005/a.out+0x40ce6d) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)

      Uninitialized value was created by a heap allocation
        #0 0x41dfa6 in malloc (/home/ben/git/compiler-bugs/bug0005/a.out+0x41dfa6) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #1 0x4fa532 in for__get_vm (/home/ben/git/compiler-bugs/bug0005/a.out+0x4fa532) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #2 0x57cce3 in for__open_proc (/home/ben/git/compiler-bugs/bug0005/a.out+0x57cce3) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #3 0x4b6b56 in for_open (/home/ben/git/compiler-bugs/bug0005/a.out+0x4b6b56) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #4 0x491b03 in MAIN__ (/home/ben/git/compiler-bugs/bug0005/a.out+0x491b03) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #5 0x40cf98 in main (/home/ben/git/compiler-bugs/bug0005/a.out+0x40cf98) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff)
        #6 0x7ff85f74f082 in __libc_start_main /build/glibc-e2p3jK/glibc-2.31/csu/../csu/libc-start.c:308:16

    SUMMARY: MemorySanitizer: use-of-uninitialized-value (/home/ben/git/compiler-bugs/bug0005/a.out+0x5a5d34) (BuildId: 5240da28924ef6c917af7a0b0e826efb945e26ff) in for__characterize_LUB_buffer
    Exiting
