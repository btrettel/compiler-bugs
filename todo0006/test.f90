program test

implicit none

type :: config_type
    real :: x
end type config_type

integer :: nml_unit

type(config_type), target :: config
real, pointer :: x => config%x

namelist /list/ x

open(newunit=nml_unit, file="test.nml", status="old", action="read")
read(unit=nml_unit, nml=list)
close(nml_unit)

print *, config%x

end program test

! trident$ nvfortran -Minform=inform -Werror test.f90 
! NVFORTRAN-S-0034-Syntax error at or near % (test.f90: 12)
! NVFORTRAN-S-0038-Symbol, x, has not been explicitly declared (test.f90: 14)
!  0 inform,   0 warnings,   2 severes, 0 fatal for test
