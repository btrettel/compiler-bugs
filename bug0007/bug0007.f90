program bug0007

implicit none

real :: x

x = 1.0

! This should print a hexadecimal number with zeroes filling in the blanks. But nvfortran returns nothing but blanks.
write(unit=*, fmt="(z0.8)") x

end program bug0007
