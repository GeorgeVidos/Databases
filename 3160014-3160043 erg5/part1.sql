CREATE TABLE Amenity AS
(SELECT distinct unnest(amenities::text[]) as amenity_name from room );
 
ALTER  TABLE Amenity
ADD COLUMN id SERIAL PRIMARY KEY;

CREATE TABLE rm_connect AS
(SELECT distinct temp.listing_id , amenity.id as amenity_id from amenity,
   (SELECT distinct room.listing_id as listing_id, unnest(amenities::text[]) as amenity_name from room ) AS temp
  where temp.amenity_name = amenity.amenity_name);



ALTER TABLE rm_connect
ADD PRIMARY KEY(listing_id, amenity_id);

 ALTER TABLE rm_connect
 add foreign key(amenity_id) REFERENCES Amenity(id);


 ALTER TABLE room
 drop column amenities;