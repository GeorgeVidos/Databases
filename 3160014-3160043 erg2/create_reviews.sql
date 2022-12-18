create table Reviews(
   listing_id int NOT NULL , 
   id int NOT NULL UNIQUE PRIMARY KEY,
   date date ,
   reviewer_id int ,
   reviewer_name varchar(100),
   comments text
);