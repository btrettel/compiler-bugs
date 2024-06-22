module mod_0007

implicit none

type t
    real :: v
contains
    procedure :: t_rf
    generic   :: read(formatted) => t_rf
end type t

contains

subroutine t_rf(dtv, unit, iotype, vlist, iostat, iomsg)
    class(t), intent(in out)         :: dtv
    integer, intent(in)              :: unit
    character(len=*), intent(in)     :: iotype
    integer, intent(in)              :: vlist(:)
    integer, intent(out)             :: iostat
    character(len=*), intent(in out) :: iomsg
    
    character(len=128) :: full_input
    
    read(unit, fmt="(a)", iostat=iostat, iomsg=iomsg) full_input
    
    full_input = adjustl(full_input)
    
    print *, full_input
    
    read(unit=full_input, fmt=*, iostat=iostat, iomsg=iomsg) dtv%v
end subroutine t_rf

end module mod_0007

program program_0007

use mod_0007
implicit none

type(t) :: x
integer :: nml_unit

namelist /list/ x

open(newunit=nml_unit, file="x.nml", status="old", action="read")
read(unit=nml_unit, nml=list)
close(nml_unit)

print *, x%v

end program program_0007
