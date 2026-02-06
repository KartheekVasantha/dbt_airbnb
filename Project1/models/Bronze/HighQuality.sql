{{config (materialized='ephemeral')}}

select booking_id,listing_id,RoomType
from {{ref('B_Bookings')}}
where RoomType='High'