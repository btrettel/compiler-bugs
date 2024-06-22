program todo0007

implicit none

character(len=128) :: x_nml
integer            :: x

namelist /list/ x

x = 12345

write(unit=x_nml, nml=list)

print *, trim(x_nml)

end program todo0007
