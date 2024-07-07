# compiler-bugs

A collection of bug reports I made for various Fortran compilers.

The [HPC Bug Reproducers](https://github.com/HPC-Bugs/reproducers) repository has some good advice on what to include in a bug report:

> When creating a report/reproducer, at minimum a README.md file should be included in the folder. The README should contain the following information:
> 
> - The version(s) of the tool and the environment(s) in which it malfunctions
> - Point to additional content in the folder necessary to reproduce the issue
> - Detailed description of the steps needed to reproduce the issue
> - (optional) A description for how to work around the issue
> 
> Any other source code, input files, etc. should also be included in the created folder sufficient for an independent contributor to reproduce the encountered issue.

Also see [John Regehr's advice](https://blog.regehr.org/archives/26):

> To show people that you have found a compiler bug, you need to create a bug report that is convincing, reproducible, and actionable.  You need a small test case (2-3 lines is ideal) that is obviously free of undefined behavior, obviously independent of unspecified behavior, and obviously miscompiled. Creating small failure-inducing test cases is hard work.  You also need to provide the expected result, and perhaps give a list of compilers and options that produce that result.  Third, you need to clearly identify the version of the compiler that produces the wrong result, including the target CPU and OS, the options used to build the compiler, etc.  If the compiler is a patched one supplied by an OS vendor (as in the Ubuntu example above), you should say so.

## How to report bugs to various Fortran compilers

- gfortran: <https://fortranwiki.org/fortran/show/GFortran#contributing>:
    - > You can report bugs in the GCC Bugzilla system: first, update your major GFortran version to its latest release, then search if the bug was already reported, then file the bug. You can also use the GFortran mailing list fortran@gcc.gnu.org if you are uncertain on how to handle Bugzilla.
- Intel: <https://community.intel.com/t5/Intel-Fortran-Compiler/bd-p/fortran-compiler>
- LLVM Flang: <https://github.com/llvm/llvm-project/issues>
    - Also see: <https://discourse.llvm.org/c/subprojects/flang/33>
- nagfor: <https://support.nag.com/#contact>
- nvfortran: <https://forums.developer.nvidia.com/c/accelerated-computing/hpc-compilers/nvc-nvc-and-nvfortran/313>

## More advice on writing bug reports

- <https://homes.cs.washington.edu/~mernst/advice/ximian-bug-guidelines.html>
- <https://www.chiark.greenend.org.uk/~sgtatham/bugs.html>
- <https://www.softwaretestinghelp.com/how-to-write-good-bug-report/>
- <https://web.archive.org/web/20170512073532/https://www.oracle.com/technetwork/articles/javase/bugreport-howto-135155.html>
- <https://web.archive.org/web/20210613191914/https://developer.mozilla.org/en-US/docs/Mozilla/QA/Bug_writing_guidelines>

## to-do

- FTN95 bug in 2024-02-24 personal log.
