/*Find all shared rooms that was rented in 2017-11-11*/

SELECT summary_listings.name, summary_listings.room_type
FROM summary_listings
FULL OUTER JOIN calendar
ON summary_listings.id = calendar.listing_id
WHERE summary_listings.room_type= 'Shared room' AND calendar.date = '2017-11-11';


/*Find the price every reviewer paid whose name started with an "S"*/1
SELECT reviews.reviewer_name,listings.price
FROM reviews
FULL OUTER JOIN listings
ON reviews.listing_id = listings.id
WHERE reviews.reviewer_name like 'S%';


/*Find the top 40 hosts that had more than 40 reviewes*/1
SELECT host_name , number_of_reviews
FROM summary_listings
where number_of_reviews > 40
order by number_of_reviews DESC
limit 40;

/*Find  comments that contain the words perfect and great*/1
SELECT Count(Reviews.comments), Reviews.listing_id 
FROM Reviews
WHERE comments LIKE '%perfect%' OR comments LIKE '%great%'
Group by (Reviews.listing_id)
ORDER BY Count(Reviews.comments) Desc;


/*Find all houses and if their available whose host's name starts with an "A" in 2018-03-03*/
SELECT calendar.available,summary_listings.name, calendar.date
FROM calendar
INNER JOIN summary_listings
ON summary_listings.id = calendar.listing_id
WHERE summary_listings.host_name like 'A%' AND calendar.date='2018-03-03'
ORDER BY summary_listings.name;
   
 /*Find the top 100 houses  and their price that had more than two rooms*/1
SELECT DISTINCT calendar.price,listings.bedrooms,listings.name
FROM calendar
INNER JOIN listings
ON listings.id = calendar.listing_id
where bedrooms >2 AND calendar.available='t'
ORDER BY calendar.price DESC
LIMIT 100;

/*Find and show reviews data and an image link */
SELECT Reviews.*, Listings.picture_url
FROM REVIEWS
INNER JOIN Listings ON Listings.id = Reviews.listing_id
LIMIT 100;

/*Find the houses in neighbourhoods between zipcodes 78724 and 78748  and their prices*/
SELECT DISTINCT neighbourhoods.neighbourhood , summary_listings.price, summary_listings.name
FROM neighbourhoods
INNER JOIN summary_listings
ON neighbourhoods.neighbourhood = CAST (summary_listings.neighbourhood AS int)
where neighbourhoods.neighbourhood BETWEEN 78724 AND 78748
ORDER BY neighbourhoods.neighbourhood DESC;


/*Find all the neighbourhoods and in which city they belong*/1
SELECT DISTINCT neighbourhood,city
FROM listings
ORDER BY city DESC;

/*Find the 1000 top hosts that their house can be rented less than 100 days*/1
SELECT DISTINCT host_name,availability_365
FROM summary_listings 
where availability_365 <100
ORDER BY availability_365 DESC
limit 1000;

/*Find the id, the name and the street of each house with an id between 593102 and 8690783*/1
SELEct distinct id,name,street 
from listings 
where id between 593102 and 8690783 ;
