module udio_mod

implicit none

type meter
    real :: v
contains
    procedure :: meter_wf
    procedure :: meter_rf
    generic   :: write(formatted) => meter_wf
    generic   :: read(formatted) => meter_rf
end type meter

contains

subroutine meter_wf(dtv, unit, iotype, vlist, iostat, iomsg)
    class(meter), intent(in)         :: dtv
    integer, intent(in)              :: unit
    character(len=*), intent(in)     :: iotype
    integer, intent(in)              :: vlist(:)
    integer, intent(out)             :: iostat
    character(len=*), intent(in out) :: iomsg
    
    character(len=16) :: pfmt
    
    if (iotype == "LISTDIRECTED" .or. iotype == "DTg0") then
        pfmt = "(g0, a)"
    else
        write(pfmt, "(2a, i0, a, i0, a)") "(", iotype(3:), vlist(1), ".", vlist(2), ", a)"
    end if
    write(unit, fmt=trim(pfmt), iostat=iostat, iomsg=iomsg) dtv%v, " m"
end subroutine meter_wf

subroutine meter_rf(dtv, unit, iotype, vlist, iostat, iomsg)
    class(meter), intent(in out)     :: dtv
    integer, intent(in)              :: unit
    character(len=*), intent(in)     :: iotype
    integer, intent(in)              :: vlist(:)
    integer, intent(out)             :: iostat
    character(len=*), intent(in out) :: iomsg
    
    character(len=128) :: full_input, value_char, unit_char
    integer            :: space_index
    
    read(unit, fmt="(a)", iostat=iostat, iomsg=iomsg) full_input
    
    ! Needed for ifx namelist input.
    full_input = adjustl(full_input)
    
    space_index = index(full_input, " ")
    
    value_char = full_input(1:space_index-1)
    read(unit=value_char, fmt=*, iostat=iostat) dtv%v
    
    unit_char = full_input(space_index+1:)
    
    if (len(trim(unit_char)) == 0) then
        iostat = -1
        iomsg = "Unit expected, none appeared: " // trim(full_input)
        return
    end if
    
    if (trim(unit_char) /= "m") then
        iostat = -2
        iomsg = "Unit mismatch: m expected, " // trim(unit_char) // " appeared."
        return
    end if
    
    if (iotype /= "DT") then
        iostat = -3
        iomsg = 'Only iotype="DT" is implemented for read. iotype=' // iotype
        return
    end if
    
    if (size(vlist) > 0) then
        iostat = -4
        iomsg = "vlist must be not specified for read."
        return
    end if
end subroutine meter_rf

end module udio_mod

program todo0009

use udio_mod
implicit none

type(meter)        :: x
character(len=24)  :: mchar
integer            :: nml_unit
integer            :: rc
character(len=128) :: rmsg

namelist /list/ x

! nvfortran can't do these. nvfortran does seem to have problems `read`ing from internal variables.
rmsg= ""
mchar = "12.345 m"
read(mchar, fmt="(dt)", iostat=rc, iomsg=rmsg) x
write(*, fmt="(dt'f'(6,3))") x
write(*, *) rc, trim(rmsg)

rmsg= ""
mchar = "21.543"
read(mchar, fmt="(dt)", iostat=rc, iomsg=rmsg) x
write(*, fmt="(dt'f'(6,3))") x
write(*, *) rc, trim(rmsg)

rmsg= ""
mchar = "32.154 s"
read(mchar, fmt="(dt)", iostat=rc, iomsg=rmsg) x
write(*, fmt="(dt'f'(6,3))") x
write(*, *) rc, trim(rmsg)

end program todo0009

