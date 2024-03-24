program bug0001

implicit none
integer, parameter :: RP = selected_real_kind(15, 307)
real(kind=RP), parameter :: PI = 3.141592653589793_RP
write(unit=*, fmt=*) PI

end program bug0001
