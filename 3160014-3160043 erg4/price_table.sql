CREATE TABLE  price
  AS (SELECT id as listing_id, price, weekly_price, monthly_price, security_deposit, cleaning_fee,
guests_included, extra_people, minimum_nights, maximum_nights,
minimum_minimum_nights, maximum_minimum_nights, minimum_maximum_nights,
maximum_maximum_nights, minimum_nights_avg_ntm, maximum_nights_avg_ntm
	 FROM listings2);



  ALTER TABLE price 
  add FOREIGN KEY (listing_id) REFERENCES Listings2(id);

 alter table price
alter column price TYPE varchar,
alter column weekly_price TYPE varchar,
alter column monthly_price TYPE varchar,
alter column security_deposit TYPE varchar,
alter column cleaning_fee TYPE varchar;

UPDATE  price
SET 
price = REPLACE(price,'$',''),
weekly_price = REPLACE(weekly_price,'$',''),
monthly_price = REPLACE(monthly_price,'$',''),
security_deposit = REPLACE(security_deposit,'$',''),
cleaning_fee = REPLACE (cleaning_fee,'$','');

UPDATE  price
SET 
price = REPLACE(price,',',''),
weekly_price = REPLACE(weekly_price,',',''),
monthly_price = REPLACE(monthly_price,',',''),
security_deposit = REPLACE(security_deposit,',',''),
cleaning_fee = REPLACE (cleaning_fee,',','');

ALTER TABLE price
alter column price TYPE numeric(10,0) using price::numeric,
alter column weekly_price TYPE numeric(10,0) using weekly_price::numeric,
alter column monthly_price TYPE numeric(10,0) using monthly_price::numeric,
alter column security_deposit TYPE numeric(10,0) using security_deposit::numeric,
alter column cleaning_fee TYPE numeric(10,0) using cleaning_fee::numeric;


  ALTER TABLE listings2
  DROP COLUMN price,
  DROP COLUMN weekly_price,
  DROP COLUMN monthly_price,
  DROP COLUMN security_deposit,
  DROP COLUMN cleaning_fee,
  DROP COLUMN guests_included,
  DROP COLUMN extra_people,
  DROP COLUMN minimum_nights,
  DROP COLUMN maximum_nights,
  DROP COLUMN minimum_minimum_nights,
  DROP COLUMN maximum_minimum_nights,
  DROP COLUMN minimum_maximum_nights,
  DROP COLUMN maximum_maximum_nights,
  DROP COLUMN minimum_nights_avg_ntm,
  DROP COLUMN maximum_nights_avg_ntm;
