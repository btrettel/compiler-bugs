Some results from earlier versions of this test:

    $ ifx --version
    ifx (IFX) 2024.2.0 20240602
    Copyright (C) 1985-2024 Intel Corporation. All rights reserved.

    $ ifx -check udio_iostat nmldtio.f90
    $ ./a.out 
    FAILED: one, rc=1 msg=/ in full_input

    $ nagfor -version
    NAG Fortran Compiler Release 7.2(Shin-Urayasu) Build 7212
    Product NPL6A72NA for x86-64 Linux
    Copyright 1990-2024 The Numerical Algorithms Group Ltd., Oxford, U.K.
    $ nagfor nmldtio.f90 
    NAG Fortran Compiler Release 7.2(Shin-Urayasu) Build 7212
    Evaluation trial version of NAG Fortran Compiler Release 7.2(Shin-Urayasu) Build 7212
    Warning: nmldtio.f90, line 79: Unused dummy variable IOTYPE
    Warning: nmldtio.f90, line 79: Unused dummy variable VLIST
    [NAG Fortran Compiler normal termination, 3 warnings]
    ben@tarzan:~/ramdisk/todo0012$ ./a.out 
    FAILED: one, rc=1 msg=/ in full_input

    $ gfortran --version
    GNU Fortran (Ubuntu 13.2.0-23ubuntu4) 13.2.0
    Copyright (C) 2023 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

    $ gfortran nmldtio.f90 
    $ ./a.out 
    FAILED: one, rc=-1 msg=End of file

This is inconsistent with the `realone` case.

    $ nvfortran --version

    nvfortran 24.3-0 64-bit target on x86-64 Linux -tp haswell 
    NVIDIA Compilers and Tools
    Copyright (c) 2024, NVIDIA CORPORATION & AFFILIATES.  All rights reserved.
    $ nvfortran nmldtio.f90 
    $ ./a.out 
    FAILED: one, rc=233 msg=entity name is not member of group

    > xlf2008 -qversion
    IBM Open XL Fortran for Linux on Power 17.1.1 (Community Edition)
    Version: 17.01.0001.0000
    /opt/ibm/openxlf/17.1.1/bin/.orig/xlf2008: 1501-303 (I) XL Fortran Community Edition is a no-charge product and does not include official IBM support. You can provide feedback at the XL on POWER Fortran Community Edition forum (http://ibm.biz/xlfortran-linux-ce). For information about a fully supported XL Fortran compiler, visit XL Fortran for Linux (http://ibm.biz/xlfortran-linux).
    > xlf2008 nmldtio.f90 
    ** mod_nmldtio   === End of Compilation 1 ===
    ** nmldtio   === End of Compilation 2 ===
    1501-510  Compilation successful for file nmldtio.f90.
    > ./a.out 
    Test 1
    Test 2
    Test 3
    Test 4
    Test 5
    FAILED: one, rc=1 msg=/ in full_input
    Test 6
    1525-097 A READ statement using decimal base input found the invalid digit 'a' in the input file.  The program will recover by assuming a zero in its place.
    FAILED: bad, rc=0 msg=
