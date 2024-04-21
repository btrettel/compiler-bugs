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
