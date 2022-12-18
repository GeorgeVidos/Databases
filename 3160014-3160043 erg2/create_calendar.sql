create table Calendar(
	listing_id int NOT NULL,
	date date NOT NULL ,
   available boolean,
   price varchar(20),
   adjusted_price varchar(20),
   minimum_nights varchar(20),
   maximum_nights varchar(20),
	
	CONSTRAINT PK_Calendar PRIMARY KEY (listing_id,date)
);