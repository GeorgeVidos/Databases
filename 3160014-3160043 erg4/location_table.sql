CREATE TABLE  Location
  AS (SELECT id as listing_id, street, neighbourhood, neighbourhood_cleansed, city, state,
zipcode, market, smart_location, country_code, country, latitude, longitude,
is_location_exact
	 FROM listings2);



  ALTER TABLE Location 
  add FOREIGN KEY (listing_id) REFERENCES Listings2(id);
  
    ALTER TABLE Location 
 add Constraint fk_neighbourhood  Foreign key (neighbourhood_cleansed) references neighbourhoods2(neighbourhood);

 


  ALTER TABLE listings2
  DROP COLUMN street,
  DROP COLUMN neighbourhood,
  DROP COLUMN neighbourhood_cleansed,
  DROP COLUMN city,
  DROP COLUMN state,
  DROP COLUMN zipcode,
  DROP COLUMN market,
  DROP COLUMN smart_location,
  DROP COLUMN country_code,
  DROP COLUMN country,
  DROP COLUMN latitude,
  DROP COLUMN longitude,
  DROP COLUMN is_location_exact;