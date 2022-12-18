ALTER TABLE reviews
ADD FOREIGN KEY (listing_id) REFERENCES Listings(id);

alter table Summary_Listings
add FOREIGN KEY(id) REFERENCES Listings(id);

alter table Listings
add FOREIGN KEY (neighbourhood_cleansed) REFERENCES Neighbourhoods(neighbourhood);

alter table Calendar
add FOREIGN KEY (listing_id) REFERENCES Listings(id);


alter table Summary_Reviews
add FOREIGN KEY (listing_id) REFERENCES Listings(id);

alter table geolocation
add FOREIGN KEY (properties_neighbourhood) REFERENCES Neighbourhoods(neighbourhood);
