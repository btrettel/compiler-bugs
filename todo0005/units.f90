module units

implicit none
private

public :: sqrt
public :: cbrt
public :: square

integer, public, parameter :: WP = selected_real_kind(15, 307)

!use units, only: length   => unit_p10000_p00000_p00000, &
!                 time     => unit_p00000_p00000_p10000, &
!                 velocity => unit_p10000_p00000_m10000, &
!                 area     => unit_p20000_p00000_p00000, &
!                 volume   => unit_p30000_p00000_p00000, &
!                 sqrt, cbrt, square

type, public :: unit_p10000_p00000_p00000
    ! kg^1.0000 m^0.0000 s^0.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(+) => a_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: s_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(-) => s_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: a_unit_p10000_p00000_p00000
    generic, public :: operator(+) => a_unit_p10000_p00000_p00000
    procedure, private :: s_unit_p10000_p00000_p00000
    generic, public :: operator(-) => s_unit_p10000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: d_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(/) => d_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000
    generic, public :: operator(*) => m_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000
    procedure, private :: d_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000
    generic, public :: operator(/) => d_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000
    procedure, private :: m_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000
    generic, public :: operator(*) => m_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000
    procedure, private :: d_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000
    generic, public :: operator(/) => d_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000
    procedure, private :: m_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_p00000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000
    generic, public :: operator(*) => m_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: d_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p10000_p00000_p00000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p10000_p00000_p00000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000
    procedure, private :: d_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000
    generic, public :: operator(/) => d_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_p00000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p10000_p00000_p00000_unit_p20000_p00000_p10000
end type unit_p10000_p00000_p00000

type, public :: unit_p00000_p00000_p10000
    ! kg^0.0000 m^0.0000 s^1.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    generic, public :: operator(+) => a_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: s_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    generic, public :: operator(-) => s_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: a_unit_p00000_p00000_p10000
    generic, public :: operator(+) => a_unit_p00000_p00000_p10000
    procedure, private :: s_unit_p00000_p00000_p10000
    generic, public :: operator(-) => s_unit_p00000_p00000_p10000
    procedure, private :: m_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000
    ! excluded: m_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: d_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    generic, public :: operator(/) => d_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: m_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000
    procedure, private :: m_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p00000_p00000_p10000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000
    ! excluded: m_unit_p00000_p00000_p10000_unit_p10000_p00000_p10000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p10000_p00000_p10000
    procedure, private :: m_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p00000_p00000_p10000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p00000_p00000_p10000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p00000_p00000_p10000_unit_p20000_p00000_p10000
end type unit_p00000_p00000_p10000

type, public :: unit_p10000_p00000_m10000
    ! kg^1.0000 m^0.0000 s^-1.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    generic, public :: operator(+) => a_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    procedure, private :: s_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    generic, public :: operator(-) => s_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    procedure, private :: a_unit_p10000_p00000_m10000
    generic, public :: operator(+) => a_unit_p10000_p00000_m10000
    procedure, private :: s_unit_p10000_p00000_m10000
    generic, public :: operator(-) => s_unit_p10000_p00000_m10000
    procedure, private :: m_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000
    generic, public :: operator(*) => m_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000
    ! excluded: m_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    procedure, private :: d_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    generic, public :: operator(/) => d_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p10000_p00000_m10000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_m10000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000
    generic, public :: operator(*) => m_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p10000_p00000_m10000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p10000_p00000_m10000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p05000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000
    generic, public :: operator(*) => m_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000
end type unit_p10000_p00000_m10000

type, public :: unit_p20000_p00000_p00000
    ! kg^2.0000 m^0.0000 s^0.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    generic, public :: operator(+) => a_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    procedure, private :: s_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    generic, public :: operator(-) => s_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    procedure, private :: a_unit_p20000_p00000_p00000
    generic, public :: operator(+) => a_unit_p20000_p00000_p00000
    procedure, private :: s_unit_p20000_p00000_p00000
    generic, public :: operator(-) => s_unit_p20000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(*) => m_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000
    generic, public :: operator(*) => m_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000
    procedure, private :: d_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p00000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p20000_p00000_p00000_unit_p20000_p00000_p10000
end type unit_p20000_p00000_p00000

type, public :: unit_p30000_p00000_p00000
    ! kg^3.0000 m^0.0000 s^0.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    generic, public :: operator(+) => a_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: s_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    generic, public :: operator(-) => s_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: a_unit_p30000_p00000_p00000
    generic, public :: operator(+) => a_unit_p30000_p00000_p00000
    procedure, private :: s_unit_p30000_p00000_p00000
    generic, public :: operator(-) => s_unit_p30000_p00000_p00000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p00000_p00000_p10000
    ! excluded: d_unit_p30000_p00000_p00000_unit_p00000_p00000_p10000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p30000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000
    procedure, private :: d_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000
    generic, public :: operator(/) => d_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000
end type unit_p30000_p00000_p00000

type, public :: unit_p00000_p00000_p00000
    ! kg^0.0000 m^0.0000 s^0.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(+) => a_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: s_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(-) => s_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: a_unit_p00000_p00000_p00000
    generic, public :: operator(+) => a_unit_p00000_p00000_p00000
    procedure, private :: s_unit_p00000_p00000_p00000
    generic, public :: operator(-) => s_unit_p00000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000
    procedure, private :: m_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000
    generic, public :: operator(*) => m_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000
end type unit_p00000_p00000_p00000

type, public :: unit_p10000_p00000_p10000
    ! kg^1.0000 m^0.0000 s^1.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    generic, public :: operator(+) => a_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    procedure, private :: s_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    generic, public :: operator(-) => s_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    procedure, private :: a_unit_p10000_p00000_p10000
    generic, public :: operator(+) => a_unit_p10000_p00000_p10000
    procedure, private :: s_unit_p10000_p00000_p10000
    generic, public :: operator(-) => s_unit_p10000_p00000_p10000
    procedure, private :: m_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000
    procedure, private :: d_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000
    generic, public :: operator(/) => d_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: d_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000
    generic, public :: operator(/) => d_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: m_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000
    generic, public :: operator(*) => m_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000
    ! excluded: d_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p10000_p00000_p10000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_p10000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_p10000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_p10000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    procedure, private :: d_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    generic, public :: operator(/) => d_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    procedure, private :: m_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000
    generic, public :: operator(*) => m_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p10000_p00000_p10000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p10000_p00000_p10000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p10000_p00000_p10000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p10000_p00000_p10000_unit_p20000_p00000_p10000
end type unit_p10000_p00000_p10000

type, public :: unit_p20000_p00000_m10000
    ! kg^2.0000 m^0.0000 s^-1.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    generic, public :: operator(+) => a_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    procedure, private :: s_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    generic, public :: operator(-) => s_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    procedure, private :: a_unit_p20000_p00000_m10000
    generic, public :: operator(+) => a_unit_p20000_p00000_m10000
    procedure, private :: s_unit_p20000_p00000_m10000
    generic, public :: operator(-) => s_unit_p20000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000
    generic, public :: operator(*) => m_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000
    ! excluded: d_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000
    procedure, private :: d_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000
    generic, public :: operator(/) => d_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_m10000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_m10000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000
    generic, public :: operator(*) => m_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000
    ! excluded: d_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    procedure, private :: d_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    generic, public :: operator(/) => d_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_m10000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_m10000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p20000_p00000_m10000_unit_p20000_p00000_p10000
end type unit_p20000_p00000_m10000

type, public :: unit_p05000_p00000_p00000
    ! kg^0.5000 m^0.0000 s^0.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    generic, public :: operator(+) => a_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    procedure, private :: s_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    generic, public :: operator(-) => s_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    procedure, private :: a_unit_p05000_p00000_p00000
    generic, public :: operator(+) => a_unit_p05000_p00000_p00000
    procedure, private :: s_unit_p05000_p00000_p00000
    generic, public :: operator(-) => s_unit_p05000_p00000_p00000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p10000_p00000_p00000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p10000_p00000_p00000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p00000_p00000_p10000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p00000_p00000_p10000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p10000_p00000_m10000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p20000_p00000_m10000
    procedure, private :: m_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    generic, public :: operator(*) => m_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    procedure, private :: d_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    generic, public :: operator(/) => d_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p05000_p00000_p00000_unit_p20000_p00000_p10000
    ! excluded: d_unit_p05000_p00000_p00000_unit_p20000_p00000_p10000
end type unit_p05000_p00000_p00000

type, public :: unit_p20000_p00000_p10000
    ! kg^2.0000 m^0.0000 s^1.0000
    real(kind=WP) :: v
contains
    procedure, private :: a_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    generic, public :: operator(+) => a_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    procedure, private :: s_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    generic, public :: operator(-) => s_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    procedure, private :: a_unit_p20000_p00000_p10000
    generic, public :: operator(+) => a_unit_p20000_p00000_p10000
    procedure, private :: s_unit_p20000_p00000_p10000
    generic, public :: operator(-) => s_unit_p20000_p00000_p10000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: d_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000
    procedure, private :: m_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000
    generic, public :: operator(*) => m_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000
    ! excluded: d_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p30000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_p10000_unit_p30000_p00000_p00000
    procedure, private :: m_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000
    generic, public :: operator(*) => m_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000
    procedure, private :: d_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000
    generic, public :: operator(/) => d_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000
    procedure, private :: d_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p20000_p00000_m10000
    ! excluded: d_unit_p20000_p00000_p10000_unit_p20000_p00000_m10000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p05000_p00000_p00000
    ! excluded: d_unit_p20000_p00000_p10000_unit_p05000_p00000_p00000
    ! excluded: m_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    procedure, private :: d_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    generic, public :: operator(/) => d_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
end type unit_p20000_p00000_p10000

interface sqrt
    module procedure sqrt_unit_p10000_p00000_p00000
    ! excluded: sqrt_unit_p00000_p00000_p10000
    ! excluded: sqrt_unit_p10000_p00000_m10000
    module procedure sqrt_unit_p20000_p00000_p00000
    ! excluded: sqrt_unit_p30000_p00000_p00000
    module procedure sqrt_unit_p00000_p00000_p00000
    ! excluded: sqrt_unit_p10000_p00000_p10000
    ! excluded: sqrt_unit_p20000_p00000_m10000
    ! excluded: sqrt_unit_p05000_p00000_p00000
    ! excluded: sqrt_unit_p20000_p00000_p10000
end interface sqrt

interface cbrt
    ! excluded: cbrt_unit_p10000_p00000_p00000
    ! excluded: cbrt_unit_p00000_p00000_p10000
    ! excluded: cbrt_unit_p10000_p00000_m10000
    ! excluded: cbrt_unit_p20000_p00000_p00000
    module procedure cbrt_unit_p30000_p00000_p00000
    module procedure cbrt_unit_p00000_p00000_p00000
    ! excluded: cbrt_unit_p10000_p00000_p10000
    ! excluded: cbrt_unit_p20000_p00000_m10000
    ! excluded: cbrt_unit_p05000_p00000_p00000
    ! excluded: cbrt_unit_p20000_p00000_p10000
end interface cbrt

interface square
    module procedure square_unit_p10000_p00000_p00000
    ! excluded: square_unit_p00000_p00000_p10000
    ! excluded: square_unit_p10000_p00000_m10000
    ! excluded: square_unit_p20000_p00000_p00000
    ! excluded: square_unit_p30000_p00000_p00000
    module procedure square_unit_p00000_p00000_p00000
    ! excluded: square_unit_p10000_p00000_p10000
    ! excluded: square_unit_p20000_p00000_m10000
    module procedure square_unit_p05000_p00000_p00000
    ! excluded: square_unit_p20000_p00000_p10000
end interface square

contains

elemental function a_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: a_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    a_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v + right%v
end function a_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000

elemental function s_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: s_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    s_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v - right%v
end function s_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000

elemental function a_unit_p10000_p00000_p00000(arg)
    ! argument: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: arg
    type(unit_p10000_p00000_p00000) :: a_unit_p10000_p00000_p00000
    a_unit_p10000_p00000_p00000%v = +arg%v
end function a_unit_p10000_p00000_p00000

elemental function s_unit_p10000_p00000_p00000(arg)
    ! argument: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: arg
    type(unit_p10000_p00000_p00000) :: s_unit_p10000_p00000_p00000
    s_unit_p10000_p00000_p00000%v = -arg%v
end function s_unit_p10000_p00000_p00000

elemental function a_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: a_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    a_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000%v = left%v + right%v
end function a_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000

elemental function s_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: s_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    s_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000%v = left%v - right%v
end function s_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000

elemental function a_unit_p00000_p00000_p10000(arg)
    ! argument: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: arg
    type(unit_p00000_p00000_p10000) :: a_unit_p00000_p00000_p10000
    a_unit_p00000_p00000_p10000%v = +arg%v
end function a_unit_p00000_p00000_p10000

elemental function s_unit_p00000_p00000_p10000(arg)
    ! argument: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: arg
    type(unit_p00000_p00000_p10000) :: s_unit_p00000_p00000_p10000
    s_unit_p00000_p00000_p10000%v = -arg%v
end function s_unit_p00000_p00000_p10000

elemental function a_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: a_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    a_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000%v = left%v + right%v
end function a_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000

elemental function s_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: s_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    s_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000%v = left%v - right%v
end function s_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000

elemental function a_unit_p10000_p00000_m10000(arg)
    ! argument: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: arg
    type(unit_p10000_p00000_m10000) :: a_unit_p10000_p00000_m10000
    a_unit_p10000_p00000_m10000%v = +arg%v
end function a_unit_p10000_p00000_m10000

elemental function s_unit_p10000_p00000_m10000(arg)
    ! argument: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: arg
    type(unit_p10000_p00000_m10000) :: s_unit_p10000_p00000_m10000
    s_unit_p10000_p00000_m10000%v = -arg%v
end function s_unit_p10000_p00000_m10000

elemental function a_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: a_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    a_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000%v = left%v + right%v
end function a_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000

elemental function s_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: s_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    s_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000%v = left%v - right%v
end function s_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000

elemental function a_unit_p20000_p00000_p00000(arg)
    ! argument: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: arg
    type(unit_p20000_p00000_p00000) :: a_unit_p20000_p00000_p00000
    a_unit_p20000_p00000_p00000%v = +arg%v
end function a_unit_p20000_p00000_p00000

elemental function s_unit_p20000_p00000_p00000(arg)
    ! argument: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: arg
    type(unit_p20000_p00000_p00000) :: s_unit_p20000_p00000_p00000
    s_unit_p20000_p00000_p00000%v = -arg%v
end function s_unit_p20000_p00000_p00000

elemental function a_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p30000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: a_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    a_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000%v = left%v + right%v
end function a_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000

elemental function s_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p30000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: s_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    s_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000%v = left%v - right%v
end function s_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000

elemental function a_unit_p30000_p00000_p00000(arg)
    ! argument: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: arg
    type(unit_p30000_p00000_p00000) :: a_unit_p30000_p00000_p00000
    a_unit_p30000_p00000_p00000%v = +arg%v
end function a_unit_p30000_p00000_p00000

elemental function s_unit_p30000_p00000_p00000(arg)
    ! argument: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: arg
    type(unit_p30000_p00000_p00000) :: s_unit_p30000_p00000_p00000
    s_unit_p30000_p00000_p00000%v = -arg%v
end function s_unit_p30000_p00000_p00000

elemental function a_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: a_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    a_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v + right%v
end function a_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000

elemental function s_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: s_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    s_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v - right%v
end function s_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000

elemental function a_unit_p00000_p00000_p00000(arg)
    ! argument: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: arg
    type(unit_p00000_p00000_p00000) :: a_unit_p00000_p00000_p00000
    a_unit_p00000_p00000_p00000%v = +arg%v
end function a_unit_p00000_p00000_p00000

elemental function s_unit_p00000_p00000_p00000(arg)
    ! argument: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: arg
    type(unit_p00000_p00000_p00000) :: s_unit_p00000_p00000_p00000
    s_unit_p00000_p00000_p00000%v = -arg%v
end function s_unit_p00000_p00000_p00000

elemental function a_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: a_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    a_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000%v = left%v + right%v
end function a_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000

elemental function s_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: s_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    s_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000%v = left%v - right%v
end function s_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000

elemental function a_unit_p10000_p00000_p10000(arg)
    ! argument: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: arg
    type(unit_p10000_p00000_p10000) :: a_unit_p10000_p00000_p10000
    a_unit_p10000_p00000_p10000%v = +arg%v
end function a_unit_p10000_p00000_p10000

elemental function s_unit_p10000_p00000_p10000(arg)
    ! argument: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: arg
    type(unit_p10000_p00000_p10000) :: s_unit_p10000_p00000_p10000
    s_unit_p10000_p00000_p10000%v = -arg%v
end function s_unit_p10000_p00000_p10000

elemental function a_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: a_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    a_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000%v = left%v + right%v
end function a_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000

elemental function s_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: s_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    s_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000%v = left%v - right%v
end function s_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000

elemental function a_unit_p20000_p00000_m10000(arg)
    ! argument: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: arg
    type(unit_p20000_p00000_m10000) :: a_unit_p20000_p00000_m10000
    a_unit_p20000_p00000_m10000%v = +arg%v
end function a_unit_p20000_p00000_m10000

elemental function s_unit_p20000_p00000_m10000(arg)
    ! argument: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: arg
    type(unit_p20000_p00000_m10000) :: s_unit_p20000_p00000_m10000
    s_unit_p20000_p00000_m10000%v = -arg%v
end function s_unit_p20000_p00000_m10000

elemental function a_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000(left, right)
    ! left: kg^0.5000 m^0.0000 s^0.0000
    ! right: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: left
    type(unit_p05000_p00000_p00000), intent(in) :: right
    type(unit_p05000_p00000_p00000) :: a_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    a_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000%v = left%v + right%v
end function a_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000

elemental function s_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000(left, right)
    ! left: kg^0.5000 m^0.0000 s^0.0000
    ! right: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: left
    type(unit_p05000_p00000_p00000), intent(in) :: right
    type(unit_p05000_p00000_p00000) :: s_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    s_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000%v = left%v - right%v
end function s_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000

elemental function a_unit_p05000_p00000_p00000(arg)
    ! argument: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: arg
    type(unit_p05000_p00000_p00000) :: a_unit_p05000_p00000_p00000
    a_unit_p05000_p00000_p00000%v = +arg%v
end function a_unit_p05000_p00000_p00000

elemental function s_unit_p05000_p00000_p00000(arg)
    ! argument: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: arg
    type(unit_p05000_p00000_p00000) :: s_unit_p05000_p00000_p00000
    s_unit_p05000_p00000_p00000%v = -arg%v
end function s_unit_p05000_p00000_p00000

elemental function a_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: a_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    a_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000%v = left%v + right%v
end function a_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000

elemental function s_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: s_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    s_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000%v = left%v - right%v
end function s_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000

elemental function a_unit_p20000_p00000_p10000(arg)
    ! argument: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: arg
    type(unit_p20000_p00000_p10000) :: a_unit_p20000_p00000_p10000
    a_unit_p20000_p00000_p10000%v = +arg%v
end function a_unit_p20000_p00000_p10000

elemental function s_unit_p20000_p00000_p10000(arg)
    ! argument: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: arg
    type(unit_p20000_p00000_p10000) :: s_unit_p20000_p00000_p10000
    s_unit_p20000_p00000_p10000%v = -arg%v
end function s_unit_p20000_p00000_p10000

elemental function m_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    m_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000

elemental function d_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000
    d_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v / right%v
end function d_unit_p10000_p00000_p00000_unit_p10000_p00000_p00000

elemental function m_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: m_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000
    m_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000%v = left%v * right%v
end function m_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000

elemental function d_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: d_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000
    d_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000%v = left%v / right%v
end function d_unit_p10000_p00000_p00000_unit_p00000_p00000_p10000

elemental function m_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: m_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000
    m_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000%v = left%v * right%v
end function m_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000

elemental function d_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: d_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000
    d_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000%v = left%v / right%v
end function d_unit_p10000_p00000_p00000_unit_p10000_p00000_m10000

elemental function m_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000
    m_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_p00000_unit_p20000_p00000_p00000

elemental function m_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: m_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000
    m_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: d_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000
    d_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p10000_p00000_p00000_unit_p00000_p00000_p00000

elemental function m_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: m_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000
    m_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000%v = left%v * right%v
end function m_unit_p10000_p00000_p00000_unit_p10000_p00000_p10000

elemental function d_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^0.0000
    ! right: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: left
    type(unit_p05000_p00000_p00000), intent(in) :: right
    type(unit_p05000_p00000_p00000) :: d_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000
    d_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000%v = left%v / right%v
end function d_unit_p10000_p00000_p00000_unit_p05000_p00000_p00000

elemental function m_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: m_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000
    m_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p10000_unit_p10000_p00000_p00000

elemental function d_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000
    d_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000%v = left%v / right%v
end function d_unit_p00000_p00000_p10000_unit_p00000_p00000_p10000

elemental function m_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: m_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000
    m_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000%v = left%v * right%v
end function m_unit_p00000_p00000_p10000_unit_p10000_p00000_m10000

elemental function m_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: m_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000
    m_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p10000_unit_p20000_p00000_p00000

elemental function m_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: m_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000
    m_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000

elemental function d_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: d_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000
    d_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p00000_p00000_p10000_unit_p00000_p00000_p00000

elemental function m_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000
    m_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000%v = left%v * right%v
end function m_unit_p00000_p00000_p10000_unit_p20000_p00000_m10000

elemental function m_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: m_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000
    m_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_m10000_unit_p10000_p00000_p00000

elemental function m_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: m_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000
    m_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000%v = left%v * right%v
end function m_unit_p10000_p00000_m10000_unit_p00000_p00000_p10000

elemental function d_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000
    d_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000%v = left%v / right%v
end function d_unit_p10000_p00000_m10000_unit_p10000_p00000_m10000

elemental function m_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: m_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000
    m_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000

elemental function d_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: d_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000
    d_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p10000_p00000_m10000_unit_p00000_p00000_p00000

elemental function m_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000
    m_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000%v = left%v * right%v
end function m_unit_p10000_p00000_m10000_unit_p10000_p00000_p10000

elemental function m_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^-1.0000
    ! right: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_m10000), intent(in) :: left
    type(unit_p20000_p00000_p10000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000
    m_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000%v = left%v * right%v
end function m_unit_p10000_p00000_m10000_unit_p20000_p00000_p10000

elemental function m_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000
    m_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v * right%v
end function m_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000

elemental function d_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: d_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000
    d_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p10000_p00000_p00000

elemental function m_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: m_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000
    m_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000%v = left%v * right%v
end function m_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000

elemental function d_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: d_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000
    d_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p00000_p00000_p10000

elemental function d_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: d_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000
    d_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p10000_p00000_m10000

elemental function d_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000
    d_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p20000_p00000_p00000

elemental function m_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000
    m_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: d_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000
    d_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: d_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000
    d_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p10000_p00000_p10000

elemental function d_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: d_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000
    d_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000%v = left%v / right%v
end function d_unit_p20000_p00000_p00000_unit_p20000_p00000_m10000

elemental function d_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: d_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000
    d_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p10000_p00000_p00000

elemental function d_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: d_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000
    d_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p10000_p00000_m10000

elemental function d_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: d_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000
    d_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p20000_p00000_p00000

elemental function d_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p30000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000
    d_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p30000_p00000_p00000

elemental function m_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000
    m_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: d_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000
    d_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: d_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000
    d_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p10000_p00000_p10000

elemental function d_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: d_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000
    d_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p20000_p00000_m10000

elemental function d_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000(left, right)
    ! left: kg^3.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p30000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: d_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000
    d_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000%v = left%v / right%v
end function d_unit_p30000_p00000_p00000_unit_p20000_p00000_p10000

elemental function m_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: m_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000
    m_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p10000_p00000_p00000

elemental function m_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: m_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000
    m_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p00000_p00000_p10000

elemental function m_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: m_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000
    m_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p10000_p00000_m10000

elemental function m_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000
    m_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p20000_p00000_p00000

elemental function m_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p30000_p00000_p00000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000
    m_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p30000_p00000_p00000

elemental function m_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: m_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    m_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000
    d_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p00000_p00000_p00000_unit_p00000_p00000_p00000

elemental function m_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: m_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000
    m_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p10000_p00000_p10000

elemental function m_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: m_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000
    m_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p20000_p00000_m10000

elemental function m_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p05000_p00000_p00000), intent(in) :: right
    type(unit_p05000_p00000_p00000) :: m_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000
    m_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p05000_p00000_p00000

elemental function m_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000(left, right)
    ! left: kg^0.0000 m^0.0000 s^0.0000
    ! right: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p00000_p00000_p00000), intent(in) :: left
    type(unit_p20000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: m_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000
    m_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000%v = left%v * right%v
end function m_unit_p00000_p00000_p00000_unit_p20000_p00000_p10000

elemental function m_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: m_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000
    m_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000

elemental function d_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: d_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000
    d_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000%v = left%v / right%v
end function d_unit_p10000_p00000_p10000_unit_p10000_p00000_p00000

elemental function d_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: d_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000
    d_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000%v = left%v / right%v
end function d_unit_p10000_p00000_p10000_unit_p00000_p00000_p10000

elemental function m_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000
    m_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000%v = left%v * right%v
end function m_unit_p10000_p00000_p10000_unit_p10000_p00000_m10000

elemental function m_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: m_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000
    m_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000

elemental function d_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: d_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000
    d_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p10000_p00000_p10000_unit_p00000_p00000_p00000

elemental function d_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000
    d_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000%v = left%v / right%v
end function d_unit_p10000_p00000_p10000_unit_p10000_p00000_p10000

elemental function m_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^1.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000
    m_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000%v = left%v * right%v
end function m_unit_p10000_p00000_p10000_unit_p20000_p00000_m10000

elemental function d_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_m10000) :: d_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000
    d_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_m10000_unit_p10000_p00000_p00000

elemental function m_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: m_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000
    m_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000%v = left%v * right%v
end function m_unit_p20000_p00000_m10000_unit_p00000_p00000_p10000

elemental function d_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: d_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000
    d_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000%v = left%v / right%v
end function d_unit_p20000_p00000_m10000_unit_p10000_p00000_m10000

elemental function m_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: m_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000
    m_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000

elemental function d_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^-1.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_m10000) :: d_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000
    d_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_m10000_unit_p00000_p00000_p00000

elemental function m_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000
    m_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000%v = left%v * right%v
end function m_unit_p20000_p00000_m10000_unit_p10000_p00000_p10000

elemental function d_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^-1.0000
    ! right: kg^2.0000 m^0.0000 s^-1.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_m10000), intent(in) :: left
    type(unit_p20000_p00000_m10000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000
    d_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000%v = left%v / right%v
end function d_unit_p20000_p00000_m10000_unit_p20000_p00000_m10000

elemental function m_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.5000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p05000_p00000_p00000) :: m_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000
    m_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000

elemental function d_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^0.5000 m^0.0000 s^0.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p05000_p00000_p00000) :: d_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000
    d_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p05000_p00000_p00000_unit_p00000_p00000_p00000

elemental function m_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000(left, right)
    ! left: kg^0.5000 m^0.0000 s^0.0000
    ! right: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: left
    type(unit_p05000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: m_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    m_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000%v = left%v * right%v
end function m_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000

elemental function d_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000(left, right)
    ! left: kg^0.5000 m^0.0000 s^0.0000
    ! right: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: left
    type(unit_p05000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000
    d_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000%v = left%v / right%v
end function d_unit_p05000_p00000_p00000_unit_p05000_p00000_p00000

elemental function d_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p00000), intent(in) :: right
    type(unit_p10000_p00000_p10000) :: d_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000
    d_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_p10000_unit_p10000_p00000_p00000

elemental function d_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^1.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p10000), intent(in) :: right
    type(unit_p20000_p00000_p00000) :: d_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000
    d_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000%v = left%v / right%v
end function d_unit_p20000_p00000_p10000_unit_p00000_p00000_p10000

elemental function m_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^-1.0000
    ! result: kg^3.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_m10000), intent(in) :: right
    type(unit_p30000_p00000_p00000) :: m_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000
    m_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000%v = left%v * right%v
end function m_unit_p20000_p00000_p10000_unit_p10000_p00000_m10000

elemental function d_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_p00000), intent(in) :: right
    type(unit_p00000_p00000_p10000) :: d_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000
    d_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_p10000_unit_p20000_p00000_p00000

elemental function m_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: m_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000
    m_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000%v = left%v * right%v
end function m_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000

elemental function d_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^1.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p00000_p00000_p00000), intent(in) :: right
    type(unit_p20000_p00000_p10000) :: d_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000
    d_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000%v = left%v / right%v
end function d_unit_p20000_p00000_p10000_unit_p00000_p00000_p00000

elemental function d_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^1.0000 m^0.0000 s^1.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p10000_p00000_p10000), intent(in) :: right
    type(unit_p10000_p00000_p00000) :: d_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000
    d_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000%v = left%v / right%v
end function d_unit_p20000_p00000_p10000_unit_p10000_p00000_p10000

elemental function d_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000(left, right)
    ! left: kg^2.0000 m^0.0000 s^1.0000
    ! right: kg^2.0000 m^0.0000 s^1.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p10000), intent(in) :: left
    type(unit_p20000_p00000_p10000), intent(in) :: right
    type(unit_p00000_p00000_p00000) :: d_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000
    d_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000%v = left%v / right%v
end function d_unit_p20000_p00000_p10000_unit_p20000_p00000_p10000

elemental function sqrt_unit_p10000_p00000_p00000(arg)
    ! arg: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^0.5000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: arg
    type(unit_p05000_p00000_p00000) :: sqrt_unit_p10000_p00000_p00000
    sqrt_unit_p10000_p00000_p00000%v = sqrt(arg%v)
end function sqrt_unit_p10000_p00000_p00000

elemental function square_unit_p10000_p00000_p00000(arg)
    ! arg: kg^1.0000 m^0.0000 s^0.0000
    ! result: kg^2.0000 m^0.0000 s^0.0000
    class(unit_p10000_p00000_p00000), intent(in) :: arg
    type(unit_p20000_p00000_p00000) :: square_unit_p10000_p00000_p00000
    square_unit_p10000_p00000_p00000%v = (arg%v)**2
end function square_unit_p10000_p00000_p00000

elemental function sqrt_unit_p20000_p00000_p00000(arg)
    ! arg: kg^2.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p20000_p00000_p00000), intent(in) :: arg
    type(unit_p10000_p00000_p00000) :: sqrt_unit_p20000_p00000_p00000
    sqrt_unit_p20000_p00000_p00000%v = sqrt(arg%v)
end function sqrt_unit_p20000_p00000_p00000

elemental function cbrt_unit_p30000_p00000_p00000(arg)
    ! arg: kg^3.0000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p30000_p00000_p00000), intent(in) :: arg
    type(unit_p10000_p00000_p00000) :: cbrt_unit_p30000_p00000_p00000
    cbrt_unit_p30000_p00000_p00000%v = (arg%v)**(1.0_WP/3.0_WP)
end function cbrt_unit_p30000_p00000_p00000

elemental function sqrt_unit_p00000_p00000_p00000(arg)
    ! arg: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: arg
    type(unit_p00000_p00000_p00000) :: sqrt_unit_p00000_p00000_p00000
    sqrt_unit_p00000_p00000_p00000%v = sqrt(arg%v)
end function sqrt_unit_p00000_p00000_p00000

elemental function cbrt_unit_p00000_p00000_p00000(arg)
    ! arg: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: arg
    type(unit_p00000_p00000_p00000) :: cbrt_unit_p00000_p00000_p00000
    cbrt_unit_p00000_p00000_p00000%v = (arg%v)**(1.0_WP/3.0_WP)
end function cbrt_unit_p00000_p00000_p00000

elemental function square_unit_p00000_p00000_p00000(arg)
    ! arg: kg^0.0000 m^0.0000 s^0.0000
    ! result: kg^0.0000 m^0.0000 s^0.0000
    class(unit_p00000_p00000_p00000), intent(in) :: arg
    type(unit_p00000_p00000_p00000) :: square_unit_p00000_p00000_p00000
    square_unit_p00000_p00000_p00000%v = (arg%v)**2
end function square_unit_p00000_p00000_p00000

elemental function square_unit_p05000_p00000_p00000(arg)
    ! arg: kg^0.5000 m^0.0000 s^0.0000
    ! result: kg^1.0000 m^0.0000 s^0.0000
    class(unit_p05000_p00000_p00000), intent(in) :: arg
    type(unit_p10000_p00000_p00000) :: square_unit_p05000_p00000_p00000
    square_unit_p05000_p00000_p00000%v = (arg%v)**2
end function square_unit_p05000_p00000_p00000

end module units
