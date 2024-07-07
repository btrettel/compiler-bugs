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
    
    if ((iostat == IOSTAT_END) .or. (iostat == IOSTAT_EOR)) then
        iostat = 0
        msg = ""
    end if
    
    full_input = adjustl(full_input)
    read(unit=full_input, fmt=*, iostat=iostat, iomsg=msg) dtv%v
    
    if (iostat /= 0) then
        iomsg = trim(msg)
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

use, intrinsic :: iso_fortran_env, only: IOSTAT_END
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

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Attempt to read a real from an empty file to compare against reading a derived type. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 4"

y = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="empty.nml", status="old", action="read")
read(unit=nml_unit, nml=b, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc /= IOSTAT_END) print "(a, i0, 3a, i0)", "FAILED: realempty, rc=", rc, " msg=", trim(msg), " expected rc=", IOSTAT_END

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Test with a multiline namelist file. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 5"

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

print "(a)", "Test 6"

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

print "(a)", "Test 7"

x%v = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="bad.nml", status="old", action="read")
read(unit=nml_unit, nml=a, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc == 0) print "(a, i0, 2a)", "FAILED: bad, rc=", rc, " msg=", trim(msg)

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Attempt to read an empty namelist file. !
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

print "(a)", "Test 8"

x%v = 0.0
rc = 0
msg = ""
open(newunit=nml_unit, file="empty.nml", status="old", action="read")
read(unit=nml_unit, nml=a, iostat=rc, iomsg=msg)
close(nml_unit)

if (rc /= IOSTAT_END) print "(a, i0, 3a, i0)", "FAILED: empty, rc=", rc, " msg=", trim(msg), " expected rc=", IOSTAT_END

end program nmldtio
