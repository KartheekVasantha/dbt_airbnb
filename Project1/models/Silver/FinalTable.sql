select a.*,
       b.property_type,b.city,
       c.Host_Name,c.Host_Since
from {{source('my_bronze','Bookings')}} a 
join {{source('my_bronze','Listings')}} b on a.listing_id=b.listing_id
join {{source('my_bronze','Hosts')}} c on b.Host_id=c.Host_id
