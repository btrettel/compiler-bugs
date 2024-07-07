! $ ifx --version
! ifx (IFX) 2024.2.0 20240602
! Copyright (C) 1985-2024 Intel Corporation. All rights reserved.
! 
! $ ifx -check udio_iostat nmldtio.f90
! $ ./a.out 
! FAILED: one, rc=1 msg=/ in full_input

! $ nagfor -version
! NAG Fortran Compiler Release 7.2(Shin-Urayasu) Build 7212
! Product NPL6A72NA for x86-64 Linux
! Copyright 1990-2024 The Numerical Algorithms Group Ltd., Oxford, U.K.
! $ nagfor nmldtio.f90 
! NAG Fortran Compiler Release 7.2(Shin-Urayasu) Build 7212
! Evaluation trial version of NAG Fortran Compiler Release 7.2(Shin-Urayasu) Build 7212
! Warning: nmldtio.f90, line 79: Unused dummy variable IOTYPE
! Warning: nmldtio.f90, line 79: Unused dummy variable VLIST
! [NAG Fortran Compiler normal termination, 3 warnings]
! ben@tarzan:~/ramdisk/todo0012$ ./a.out 
! FAILED: one, rc=1 msg=/ in full_input

! $ gfortran --version
! GNU Fortran (Ubuntu 13.2.0-23ubuntu4) 13.2.0
! Copyright (C) 2023 Free Software Foundation, Inc.
! This is free software; see the source for copying conditions.  There is NO
! warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
! 
! $ gfortran nmldtio.f90 
! $ ./a.out 
! FAILED: one, rc=-1 msg=End of file
! 
! This is inconsistent with the `realone` case.

! $ nvfortran --version
! 
! nvfortran 24.3-0 64-bit target on x86-64 Linux -tp haswell 
! NVIDIA Compilers and Tools
! Copyright (c) 2024, NVIDIA CORPORATION & AFFILIATES.  All rights reserved.
! $ nvfortran nmldtio.f90 
! $ ./a.out 
! FAILED: one, rc=233 msg=entity name is not member of group

module mod_nmldtio

implicit none

type t
    real :: v
contains
!    procedure :: t_wf
!    generic   :: write(formatted) => t_wf
    procedure :: t_rf
    generic   :: read(formatted) => t_rf
end type t

contains

!subroutine t_wf(dtv, unit, iotype, vlist, iostat, iomsg)
!    class(t), intent(in)             :: dtv
!    integer, intent(in)              :: unit
!    character(len=*), intent(in)     :: iotype
!    integer, intent(in)              :: vlist(:)
!    integer, intent(out)             :: iostat
!    character(len=*), intent(in out) :: iomsg
    
!    write(unit, fmt="(f6.3)", iostat=iostat, iomsg=iomsg) dtv%v
!end subroutine t_wf

subroutine t_rf(dtv, unit, iotype, vlist, iostat, iomsg)
    use, intrinsic :: iso_fortran_env, only: IOSTAT_END, IOSTAT_EOR
    
    class(t), intent(in out)         :: dtv
    integer, intent(in)              :: unit
    character(len=*), intent(in)     :: iotype
    integer, intent(in)              :: vlist(:)
    integer, intent(out)             :: iostat
    character(len=*), intent(in out) :: iomsg
    
    character(len=2048) :: full_input, msg
    
    read(unit, fmt="(a)", iostat=iostat, iomsg=msg) full_input
    
    full_input = adjustl(full_input)
    read(unit=full_input, fmt=*, iostat=iostat, iomsg=msg) dtv%v
    
    if ((iostat == IOSTAT_END) .or. (iostat == IOSTAT_EOR)) then
        iostat = 0
        msg = ""
    end if
    
    if ((iostat /= 0)) then
        iomsg = msg
        return
    end if
    
    if (index(full_input, "/") /= 0) then
        iostat = 1
        iomsg  = "/ in full_input"
        return
    end if
end subroutine t_rf

end module mod_nmldtio

program nmldtio

use mod_nmldtio
implicit none

type(t) :: x
real    :: y
integer :: nml_unit, rc
character(len=128) :: msg

namelist /a/ x
namelist /b/ y

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Read a real from a multiline namelist to compare against reading a derived type. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 1"

y = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="realmultiple.nml", status="old", action="read")
read(unit=nml_unit, nml=b, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc /= 0) print "(a, i0, 2a)", "FAILED: realmultiple, rc=", rc, " msg=", trim(msg)

if (abs(y - 2.0) > 2.0*spacing(2.0)) print "(a, (f6.3))", "FAILED: realmultiple, y=", y

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Read a real from a one line namelist to compare against reading a derived type. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 2"

y = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="realone.nml", status="old", action="read")
read(unit=nml_unit, nml=b, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc /= 0) print "(a, i0, 2a)", "FAILED: realone, rc=", rc, " msg=", trim(msg)

if (abs(y - 2.0) > 2.0*spacing(2.0)) print "(a, (f6.3))", "FAILED: realone, x=", y

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Read a real from a bad namelist to compare against reading a derived type. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 3"

y = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="realbad.nml", status="old", action="read")
read(unit=nml_unit, nml=b, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc == 0) print "(a, i0, 2a)", "FAILED: realbad, rc=", rc, " msg=", trim(msg)

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Test with a multiline namelist file. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 4"

x%v = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="multiple.nml", status="old", action="read")
read(unit=nml_unit, nml=a, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc /= 0) print "(a, i0, 2a)", "FAILED: multiple, rc=", rc, " msg=", trim(msg)

if (abs(x%v - 2.0) > 2.0*spacing(2.0)) print "(a, (f6.3))", "FAILED: multiple, x=", x

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Test with a one line namelist file. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 5"

x%v = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="one.nml", status="old", action="read")
read(unit=nml_unit, nml=a, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc /= 0) print "(a, i0, 2a)", "FAILED: one, rc=", rc, " msg=", trim(msg)

if (abs(x%v - 2.0) > 2.0*spacing(2.0)) print "(a, (f6.3))", "FAILED: one, x=", x

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Test with a bad namelist. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 6"

x%v = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="bad.nml", status="old", action="read")
read(unit=nml_unit, nml=a, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc == 0) print "(a, i0, 2a)", "FAILED: bad, rc=", rc, " msg=", trim(msg)

end program nmldtio
