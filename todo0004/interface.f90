module test_mod

implicit none
private

public :: operator(*)

type, public :: a
    real :: v
end type

type, public :: b
    real :: v
end type

type, public :: c
    real :: v
end type

interface operator(*)
    module procedure m_a_b
end interface operator(*)

contains

elemental function m_a_b(left, right)
    class(a), intent(in) :: left
    type(b), intent(in)  :: right
    
    type(c) :: m_a_b
    
    m_a_b%v = left%v * right%v
end function m_a_b

end module test_mod

program test

use test_mod, only: a, b, c, operator(*)
implicit none

type(a) :: x
type(b) :: y
type(c) :: z

x%v = 1.0
y%v = 2.0
z = x * y
print *, z%v

end program test
