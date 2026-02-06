select *
from {{ ref('B_Bookings') }}
where nights_booked < 0