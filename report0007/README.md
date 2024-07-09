# Report 0007

- date reported: 2024-06-23
- compiler: nagfor
- bug report URL: (none)
- status: bug fixed (2024-07-03, build 7212)
- action to complete when fixed: Continue trying derived type namelist I/O for units.f90.

## Bug report message

### Unusual behavior of nagfor with derived type namelist input

I am trying a trial of the nagfor compiler. I'm seeing some unusual behavior for derived type namelist input. I've attached a reproducer. Compile with nagfor 0007.f90 and run a.out.

The problem is that nagfor includes the closing slash in the variable `full_input`. (That is the first variable printed.) The variable `full_input` seems redundant in this reproducer, but I do some parsing of it in my actual subroutine. I could remove the slash easily, sure, but I expect the slash to terminate an input statement and my reading of the standard says the same. You all are far more familiar with the Fortran standard than I am, but this seems to be a bug to me. I've tried gfortran, ifx, and nvfortran and none include the slash in `full_input`.

If the problem is indeed on my end, let me know.

Thanks.

Ben

***

I appreciate the fast resolution. Build 7212 does indeed run successfully for the x.nml file I provided. However, if instead a single line namelist file is used, then nagfor still includes the incorrect /. Try the following for x.nml:

&list x = 2.0 /

Can you all take a look at this case?

Thanks.

Ben

[The issue brought up in this email was not valid.]
