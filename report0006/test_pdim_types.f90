program test_pdim_types

use pdim_types, only: length   => pdim_p10000_p00000_p00000, &
                      time     => pdim_p00000_p00000_p10000, &
                      velocity => pdim_p10000_p00000_m10000, &
                      area     => pdim_p20000_p00000_p00000, &
                      volume   => pdim_p30000_p00000_p00000, &
                      sqrt, cbrt, square, &
                      WP
implicit none

type(length)   :: x, y, z
type(time)     :: t
type(velocity) :: v
type(area)     :: a
type(volume)   :: vol

x%v = 1.0_WP
y%v = -1.0_WP
z = x + y
print *, z%v

x%v = 1.0_WP
y%v = -1.0_WP
z = x - y
print *, z%v

v%v = -0.5_WP
t%v = 3.0_WP
x = v * t
print *, x%v

x%v = 1.0_WP
t%v = 2.0_WP
v = x / t
print *, v%v

a%v = 4.0_WP
x   = sqrt(a)
print *, x%v

vol%v = 27.0_WP
x     = cbrt(vol)
print *, x%v

x%v = 4.0_WP
a   = square(x)
print *, a%v

! This will fail to compile.
! z = x / t

! This will fail to compile.
! z = sqrt(x)

end program test_pdim_types
