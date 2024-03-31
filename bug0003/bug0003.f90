module bug0003_mod

implicit none

public :: a

contains

subroutine a(x)
    real, intent(in) :: x
    
    ! Comment out the namelist line and nvfortran removes the false warning.
    namelist /bugnml/ x
    
    write(*, *) x
end subroutine a

end module bug0003_mod

program bug0003

use bug0003_mod, only: a
implicit none

call a(1.0)

end program bug0003
