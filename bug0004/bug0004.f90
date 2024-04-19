module bug0004_mod

implicit none
private

type, public :: t
    real :: v
contains
    procedure, private :: t_exp
    generic, public :: operator(**) => t_exp
end type t

contains

elemental function t_exp(t_in, int_in)
    class(t), intent(in) :: t_in
    integer, intent(in)  :: int_in
    
    type(t) :: t_exp

    t_exp%v  = t_in%v**int_in
end function t_exp

end module bug0004_mod

program bug0004

use bug0004_mod, only: t
implicit none

type(t) :: x, y

x%v = 5.0

! Commenting out the next two lines eliminates the error. But why?
y = x**7
print *, y%v

y = f(x)
print *, y%v

contains

! If `f` is a module procedure instead of an internal procedure, there are no errors.

function f(x)
    ! Uncommenting this makes no difference.
    ! use bug0004_mod, only: ad
    
    type(t), intent(in) :: x
    
    type(t) :: f
    
    f = x**2
end function f

end program bug0004
