{% snapshot Fact_Bookings_Airbnb %}

{{
    config(
        target_schema='For_DBT',
        unique_key='Booking_id',
        strategy='check',
        check_cols=['Listing_id','Booking_date']
        )
}}

SELECT * FROM {{source('my_bronze','Bookings')}}

{% endsnapshot %}
