{% set ngt_bkd =-10 %}
{{ config(tags=['finance', 'daily']) }}

SELECT booking_id,
       listing_id,
       booking_date,
       nights_booked,
       {{ category('cast(booking_amount as int)') }} as RoomType,
       {{ multi('nights_booked','booking_amount') }}+cleaning_fee+service_fee as TotalAmt,
       booking_status
FROM {{source('my_bronze','Bookings')}}
WHERE NIGHTS_BOOKED>{{ngt_bkd}}