module pdim_types

implicit none
private

public :: sqrt, cbrt, square

integer, public, parameter :: WP = selected_real_kind(15, 307)

!use pdim_types, only: length   => pdim_p10000_p00000_p00000, &
!                      time     => pdim_p00000_p00000_p10000, &
!                      velocity => pdim_p10000_p00000_m10000, &
!                      area     => pdim_p20000_p00000_p00000, &
!                      volume   => pdim_p30000_p00000_p00000, &
!                      sqrt, cbrt, square

type, public :: pdim_p00000_p00000_m10000
    ! physical dimension: [L]^0. [M]^0. [T]^-1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    generic, public :: operator(+) => a_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: s_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    generic, public :: operator(-) => s_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    ! excluded: m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p20000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p30000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000
end type pdim_p00000_p00000_m10000

type, public :: pdim_p00000_p00000_p00000
    ! physical dimension: [L]^0. [M]^0. [T]^0.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(+) => a_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: s_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(-) => s_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000
    procedure, private :: m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000
end type pdim_p00000_p00000_p00000

type, public :: pdim_p00000_p00000_p10000
    ! physical dimension: [L]^0. [M]^0. [T]^1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    generic, public :: operator(+) => a_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: s_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    generic, public :: operator(-) => s_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000
    ! excluded: m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000
    ! excluded: m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000
    procedure, private :: m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p10000
end type pdim_p00000_p00000_p10000

type, public :: pdim_p10000_p00000_m10000
    ! physical dimension: [L]^1. [M]^0. [T]^-1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    generic, public :: operator(+) => a_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: s_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    generic, public :: operator(-) => s_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    ! excluded: m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p20000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p10000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p10000_p00000_m10000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p10000_p00000_m10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_m10000_pdim_p30000_p00000_p10000
end type pdim_p10000_p00000_m10000

type, public :: pdim_p10000_p00000_p00000
    ! physical dimension: [L]^1. [M]^0. [T]^0.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(+) => a_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: s_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(-) => s_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000
    procedure, private :: d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000
    procedure, private :: d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000
    ! excluded: d_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000
    procedure, private :: m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p10000_p00000_p00000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_p00000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p10000_p00000_p00000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p10000_p00000_p00000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p10000_p00000_p00000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_p00000_pdim_p30000_p00000_p10000
end type pdim_p10000_p00000_p00000

type, public :: pdim_p10000_p00000_p10000
    ! physical dimension: [L]^1. [M]^0. [T]^1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    generic, public :: operator(+) => a_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: s_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    generic, public :: operator(-) => s_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000
    ! excluded: m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000
    ! excluded: m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000
    procedure, private :: m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p10000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p10000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p10000_p00000_p10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p10000_p00000_p10000_pdim_p30000_p00000_p10000
end type pdim_p10000_p00000_p10000

type, public :: pdim_p20000_p00000_m10000
    ! physical dimension: [L]^2. [M]^0. [T]^-1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    generic, public :: operator(+) => a_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    procedure, private :: s_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    generic, public :: operator(-) => s_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    procedure, private :: d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p20000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p20000_p00000_m10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_m10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p20000_p00000_m10000_pdim_p30000_p00000_p10000
end type pdim_p20000_p00000_m10000

type, public :: pdim_p20000_p00000_p00000
    ! physical dimension: [L]^2. [M]^0. [T]^0.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    generic, public :: operator(+) => a_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    procedure, private :: s_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    generic, public :: operator(-) => s_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    procedure, private :: m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000
    procedure, private :: d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_p00000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p20000_p00000_p00000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_p00000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p20000_p00000_p00000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_p00000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p20000_p00000_p00000_pdim_p30000_p00000_p10000
end type pdim_p20000_p00000_p00000

type, public :: pdim_p20000_p00000_p10000
    ! physical dimension: [L]^2. [M]^0. [T]^1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    generic, public :: operator(+) => a_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    procedure, private :: s_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    generic, public :: operator(-) => s_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    procedure, private :: m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000
    ! excluded: d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000
    ! excluded: d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000
    procedure, private :: m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000
    procedure, private :: d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    procedure, private :: d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p20000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: d_pdim_p20000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p20000_p00000_p10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p20000_p00000_p10000_pdim_p30000_p00000_p10000
end type pdim_p20000_p00000_p10000

type, public :: pdim_p30000_p00000_m10000
    ! physical dimension: [L]^3. [M]^0. [T]^-1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    generic, public :: operator(+) => a_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    procedure, private :: s_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    generic, public :: operator(-) => s_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p10000
    ! excluded: d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p10000
end type pdim_p30000_p00000_m10000

type, public :: pdim_p30000_p00000_p00000
    ! physical dimension: [L]^3. [M]^0. [T]^0.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    generic, public :: operator(+) => a_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    procedure, private :: s_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    generic, public :: operator(-) => s_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    procedure, private :: m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000
    procedure, private :: m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(*) => m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000
end type pdim_p30000_p00000_p00000

type, public :: pdim_p30000_p00000_p10000
    ! physical dimension: [L]^3. [M]^0. [T]^1.
    real(kind=WP) :: v
contains
    procedure, private :: a_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    generic, public :: operator(+) => a_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    procedure, private :: s_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    generic, public :: operator(-) => s_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    procedure, private :: m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000
    generic, public :: operator(*) => m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000
    ! excluded: d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000
    procedure, private :: m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(*) => m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p10000_p00000_m10000
    ! excluded: d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p20000_p00000_m10000
    ! excluded: d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_m10000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000
    ! excluded: m_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    procedure, private :: d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    generic, public :: operator(/) => d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
end type pdim_p30000_p00000_p10000

interface sqrt
    ! excluded: sqrt_pdim_p00000_p00000_m10000
    module procedure sqrt_pdim_p00000_p00000_p00000
    ! excluded: sqrt_pdim_p00000_p00000_p10000
    ! excluded: sqrt_pdim_p10000_p00000_m10000
    ! excluded: sqrt_pdim_p10000_p00000_p00000
    ! excluded: sqrt_pdim_p10000_p00000_p10000
    ! excluded: sqrt_pdim_p20000_p00000_m10000
    module procedure sqrt_pdim_p20000_p00000_p00000
    ! excluded: sqrt_pdim_p20000_p00000_p10000
    ! excluded: sqrt_pdim_p30000_p00000_m10000
    ! excluded: sqrt_pdim_p30000_p00000_p00000
    ! excluded: sqrt_pdim_p30000_p00000_p10000
end interface sqrt

interface cbrt
    ! excluded: cbrt_pdim_p00000_p00000_m10000
    module procedure cbrt_pdim_p00000_p00000_p00000
    ! excluded: cbrt_pdim_p00000_p00000_p10000
    ! excluded: cbrt_pdim_p10000_p00000_m10000
    ! excluded: cbrt_pdim_p10000_p00000_p00000
    ! excluded: cbrt_pdim_p10000_p00000_p10000
    ! excluded: cbrt_pdim_p20000_p00000_m10000
    ! excluded: cbrt_pdim_p20000_p00000_p00000
    ! excluded: cbrt_pdim_p20000_p00000_p10000
    ! excluded: cbrt_pdim_p30000_p00000_m10000
    module procedure cbrt_pdim_p30000_p00000_p00000
    ! excluded: cbrt_pdim_p30000_p00000_p10000
end interface cbrt

interface square
    ! excluded: square_pdim_p00000_p00000_m10000
    module procedure square_pdim_p00000_p00000_p00000
    ! excluded: square_pdim_p00000_p00000_p10000
    ! excluded: square_pdim_p10000_p00000_m10000
    module procedure square_pdim_p10000_p00000_p00000
    ! excluded: square_pdim_p10000_p00000_p10000
    ! excluded: square_pdim_p20000_p00000_m10000
    ! excluded: square_pdim_p20000_p00000_p00000
    ! excluded: square_pdim_p20000_p00000_p10000
    ! excluded: square_pdim_p30000_p00000_m10000
    ! excluded: square_pdim_p30000_p00000_p00000
    ! excluded: square_pdim_p30000_p00000_p10000
end interface square

contains

elemental function a_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: a_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    a_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000

elemental function s_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: s_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    s_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000

elemental function a_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: a_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    a_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v + pdim_right%v
end function a_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function s_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: s_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    s_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v - pdim_right%v
end function s_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function a_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: a_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    a_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000

elemental function s_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: s_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    s_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000

elemental function a_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: a_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    a_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000

elemental function s_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: s_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    s_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000

elemental function a_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: a_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    a_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v + pdim_right%v
end function a_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function s_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: s_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    s_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v - pdim_right%v
end function s_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function a_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: a_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    a_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000

elemental function s_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: s_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    s_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000

elemental function a_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: a_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    a_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000

elemental function s_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: s_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    s_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000

elemental function a_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: a_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    a_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000%v = pdim_left%v + pdim_right%v
end function a_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000

elemental function s_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: s_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    s_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000%v = pdim_left%v - pdim_right%v
end function s_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000

elemental function a_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: a_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    a_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000

elemental function s_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: s_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    s_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000

elemental function a_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: a_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    a_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000

elemental function s_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: s_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    s_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000

elemental function a_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: a_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    a_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000%v = pdim_left%v + pdim_right%v
end function a_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000

elemental function s_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: s_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    s_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000%v = pdim_left%v - pdim_right%v
end function s_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000

elemental function a_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: a_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    a_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000%v = pdim_left%v + pdim_right%v
end function a_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000

elemental function s_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: s_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    s_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000%v = pdim_left%v - pdim_right%v
end function s_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000

elemental function d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000
    d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000
    m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000
    d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000
    m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p00000_p00000_p10000

elemental function m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000
    m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p00000

elemental function m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000
    m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p10000_p00000_p10000

elemental function m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000
    m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p00000

elemental function m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000
    m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p20000_p00000_p10000

elemental function m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000
    m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p00000

elemental function m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000
    m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_m10000_pdim_p30000_p00000_p10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000
    m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000
    d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000
    d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000
    m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000
    d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000
    m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_m10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000
    m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000
    m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p10000_p00000_p10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000
    m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_m10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000
    m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p00000

elemental function m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000
    m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p20000_p00000_p10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000
    m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_m10000

elemental function m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000
    m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p00000

elemental function m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000
    m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p00000_pdim_p30000_p00000_p10000

elemental function m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000
    m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000
    m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000
    d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000
    d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p00000_p00000_p10000_pdim_p00000_p00000_p10000

elemental function m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000
    m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_m10000

elemental function m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000
    m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p10000_p00000_p00000

elemental function m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000
    m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_m10000

elemental function m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000
    m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p20000_p00000_p00000

elemental function m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000
    m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_m10000

elemental function m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^0. [M]^0. [T]^1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000
    m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p00000_p00000_p10000_pdim_p30000_p00000_p00000

elemental function d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000
    d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000
    m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000
    d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000
    m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_m10000_pdim_p00000_p00000_p10000

elemental function d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000
    d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_m10000

elemental function m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000
    m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000
    d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p00000

elemental function m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000
    m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_m10000_pdim_p10000_p00000_p10000

elemental function m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000
    m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p00000

elemental function m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000
    m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_m10000_pdim_p20000_p00000_p10000

elemental function m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000
    m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000
    d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000
    m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000
    d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000
    m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000
    d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000
    m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000

elemental function d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000
    d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_m10000

elemental function m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000
    d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000
    m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000

elemental function d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000
    d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p00000_pdim_p10000_p00000_p10000

elemental function m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000
    m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_m10000

elemental function m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000
    m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p00000

elemental function m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000
    m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p00000_pdim_p20000_p00000_p10000

elemental function m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000
    m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000
    m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000
    d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000
    d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p10000_pdim_p00000_p00000_p10000

elemental function m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000
    m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_m10000

elemental function m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000
    m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000
    d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000
    d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p10000_p00000_p10000_pdim_p10000_p00000_p10000

elemental function m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000
    m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_m10000

elemental function m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^1. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000
    m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p10000_p00000_p10000_pdim_p20000_p00000_p00000

elemental function d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000
    d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000
    m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000
    d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000
    m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_m10000_pdim_p00000_p00000_p10000

elemental function d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000
    d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_m10000

elemental function m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000
    m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000
    d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p00000

elemental function m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000
    m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_m10000_pdim_p10000_p00000_p10000

elemental function d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000
    d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_m10000

elemental function d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000
    d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_m10000_pdim_p20000_p00000_p00000

elemental function m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000
    m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000
    d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000
    m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000
    d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000
    m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000
    d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000
    m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000

elemental function d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000
    d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_m10000

elemental function m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000
    m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000
    d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000
    m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000

elemental function d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000
    d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p10000_p00000_p10000

elemental function d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000
    d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_m10000

elemental function d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000
    d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p00000

elemental function d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000
    d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p00000_pdim_p20000_p00000_p10000

elemental function m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000
    m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000
    m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000
    d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000
    d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p10000_pdim_p00000_p00000_p10000

elemental function m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000
    m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_m10000

elemental function m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000
    m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000
    d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000
    d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p10000_pdim_p10000_p00000_p10000

elemental function d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000
    d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p00000

elemental function d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^2. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000
    d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p20000_p00000_p10000_pdim_p20000_p00000_p10000

elemental function d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000
    d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000
    m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000
    d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p00000

elemental function m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000
    m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_m10000_pdim_p00000_p00000_p10000

elemental function d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000
    d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_m10000

elemental function d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000
    d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000
    d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_m10000

elemental function d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000
    d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p20000_p00000_p00000

elemental function d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000
    d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_m10000

elemental function d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000
    d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_m10000_pdim_p30000_p00000_p00000

elemental function m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000
    m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000
    d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_m10000

elemental function m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000
    m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000
    d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p00000

elemental function m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000
    m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_m10000) :: d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000
    d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p00000_p00000_p10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000
    d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_m10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000
    d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p00000

elemental function d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_m10000) :: d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000
    d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p10000_p00000_p10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000
    d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_m10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000
    d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p00000

elemental function d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_m10000) :: d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000
    d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p20000_p00000_p10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000
    d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_m10000

elemental function d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000
    d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p00000

elemental function d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^0.
    ! right: physical dimension: [L]^3. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^-1.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_m10000) :: d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000
    d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p00000_pdim_p30000_p00000_p10000

elemental function m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^-1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_m10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000
    m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_m10000

elemental function m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000
    m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v * pdim_right%v
end function m_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^3. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p10000) :: d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000
    d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p00000

elemental function d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^0. [M]^0. [T]^1.
    ! out: physical dimension: [L]^3. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p00000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p30000_p00000_p00000) :: d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000
    d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p00000_p00000_p10000

elemental function d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p10000) :: d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000
    d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p00000

elemental function d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^1. [M]^0. [T]^1.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p10000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p20000_p00000_p00000) :: d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000
    d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p10000_p00000_p10000

elemental function d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p10000) :: d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000
    d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p00000

elemental function d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^2. [M]^0. [T]^1.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p20000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p10000_p00000_p00000) :: d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000
    d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p20000_p00000_p10000

elemental function d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^1.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p10000) :: d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000
    d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p00000

elemental function d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000(pdim_left, pdim_right)
    ! left: physical dimension: [L]^3. [M]^0. [T]^1.
    ! right: physical dimension: [L]^3. [M]^0. [T]^1.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_left
    class(pdim_p30000_p00000_p10000), intent(in) :: pdim_right
    type(pdim_p00000_p00000_p00000) :: d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000
    d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000%v = pdim_left%v / pdim_right%v
end function d_pdim_p30000_p00000_p10000_pdim_p30000_p00000_p10000

elemental function sqrt_pdim_p00000_p00000_p00000(pdim)
    ! arg: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim
    type(pdim_p00000_p00000_p00000) :: sqrt_pdim_p00000_p00000_p00000
    sqrt_pdim_p00000_p00000_p00000%v = sqrt(pdim%v)
end function sqrt_pdim_p00000_p00000_p00000

elemental function cbrt_pdim_p00000_p00000_p00000(pdim)
    ! arg: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim
    type(pdim_p00000_p00000_p00000) :: cbrt_pdim_p00000_p00000_p00000
    cbrt_pdim_p00000_p00000_p00000%v = (pdim%v)**(1.0_WP/3.0_WP)
end function cbrt_pdim_p00000_p00000_p00000

elemental function square_pdim_p00000_p00000_p00000(pdim)
    ! arg: physical dimension: [L]^0. [M]^0. [T]^0.
    ! out: physical dimension: [L]^0. [M]^0. [T]^0.
    class(pdim_p00000_p00000_p00000), intent(in) :: pdim
    type(pdim_p00000_p00000_p00000) :: square_pdim_p00000_p00000_p00000
    square_pdim_p00000_p00000_p00000%v = (pdim%v)**2
end function square_pdim_p00000_p00000_p00000

elemental function square_pdim_p10000_p00000_p00000(pdim)
    ! arg: physical dimension: [L]^1. [M]^0. [T]^0.
    ! out: physical dimension: [L]^2. [M]^0. [T]^0.
    class(pdim_p10000_p00000_p00000), intent(in) :: pdim
    type(pdim_p20000_p00000_p00000) :: square_pdim_p10000_p00000_p00000
    square_pdim_p10000_p00000_p00000%v = (pdim%v)**2
end function square_pdim_p10000_p00000_p00000

elemental function sqrt_pdim_p20000_p00000_p00000(pdim)
    ! arg: physical dimension: [L]^2. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p20000_p00000_p00000), intent(in) :: pdim
    type(pdim_p10000_p00000_p00000) :: sqrt_pdim_p20000_p00000_p00000
    sqrt_pdim_p20000_p00000_p00000%v = sqrt(pdim%v)
end function sqrt_pdim_p20000_p00000_p00000

elemental function cbrt_pdim_p30000_p00000_p00000(pdim)
    ! arg: physical dimension: [L]^3. [M]^0. [T]^0.
    ! out: physical dimension: [L]^1. [M]^0. [T]^0.
    class(pdim_p30000_p00000_p00000), intent(in) :: pdim
    type(pdim_p10000_p00000_p00000) :: cbrt_pdim_p30000_p00000_p00000
    cbrt_pdim_p30000_p00000_p00000%v = (pdim%v)**(1.0_WP/3.0_WP)
end function cbrt_pdim_p30000_p00000_p00000

end module pdim_types
