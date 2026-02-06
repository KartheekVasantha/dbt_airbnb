{{ config(tags=['finance']) }}

select DISTINCT b.country,RoomType
from {{ref('HighQuality')}} a 
join {{source('my_bronze','Listings')}} b 
on a.listing_id=b.listing_id