create table Summary_Listings(
   id int NOT NULL PRIMARY KEY,
   name varchar(200),
   host_id int,
   host_name varchar(40),
   neighbourhood_group varchar(100),
   neighbourhood varchar(40) , 
   latitude varchar(20) ,
   longitude varchar(20),
   room_type varchar(20),
   price int,
   minimum_nights int,
   number_of_reviews int,
   last_review varchar(10),
   reviews_per_month varchar(10),
   calculated_host_listings_count int,
   availability_365 int
);