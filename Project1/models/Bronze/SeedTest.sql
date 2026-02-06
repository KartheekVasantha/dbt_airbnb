SELECT a.*,b.smallname 
FROM DBT_PROJECT.FOR_DBT.Listings A 
JOIN {{ref('CntrySmallName')}} B ON A.COUNTRY=B.COUNTRY