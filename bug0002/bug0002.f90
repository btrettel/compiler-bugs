program bug0002

implicit none

character(len=5) :: x = "fails"

error stop "This " // x

end program bug0002
