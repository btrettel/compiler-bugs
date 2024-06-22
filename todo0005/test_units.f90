program test_units

use units, only: length   => unit_p10000_p00000_p00000, &
                 time     => unit_p00000_p00000_p10000, &
                 velocity => unit_p10000_p00000_m10000, &
                 WP
implicit none

type(velocity) :: v

! If this compiles, then I can use constructors nicely.
! TODO: Doesn't work with nvfortran. File a bug report.
v = length(1.0_WP) / time(1.0_WP)

print *, v%v

end program test_units
