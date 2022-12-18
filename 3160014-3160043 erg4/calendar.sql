ALTER TABLE Calendar2
alter column price TYPE varchar,
alter column adjusted_price TYPE varchar,
alter column available TYPE boolean;


UPDATE  Calendar2
SET 
price = REPLACE(price,'$',''),
adjusted_price = REPLACE (adjusted_price,'$','');

UPDATE  Calendar2
SET 
price = REPLACE(price,',',''),
adjusted_price = REPLACE (adjusted_price,',','');

ALTER TABLE Calendar2
alter column price TYPE numeric(10,0) using price::numeric,
alter column adjusted_price TYPE numeric(10,0) using adjusted_price::numeric;