module t_mod

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
    
    iomsg = ""
    read(unit, fmt=*, iostat=iostat, iomsg=iomsg) dtv%v
end subroutine t_rf

end module t_mod

program todo0008

use t_mod
implicit none

type(t)            :: x
character(len=8)   :: mchar
integer            :: rc
character(len=128) :: rmsg

mchar = "12.345"
read(unit=mchar, fmt="(dt)", iostat=rc, iomsg=rmsg) x
write(*, *) x%v, rc, rmsg

end program todo0008
