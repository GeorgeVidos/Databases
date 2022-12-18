create table Links(
   movieId int PRIMARY KEY,
   imdbId int ,
   tmdbId varchar(10)
);


create table Movies_Metadata(
   adult varchar(10),
   belongs_to_collection varchar(190),
   budget int,
   genres varchar(270),
   homepage varchar(250),
   id int PRIMARY KEY,
   imdb_id varchar(10) ,
   original_language varchar(10),
   original_title varchar(110),
   overview varchar(1000),
   popularity varchar(10),
   poster_path varchar(40),
   production_companies varchar(1260),
   production_countries varchar(1040),
   release_date date,
   revenue varchar(25),
   runtime varchar(10),
   spoken_languages varchar(770),
   status varchar(20),
   tagline varchar(300),
   title varchar(110),
   video varchar(10),
   vote_average varchar(10),
   vote_count int
);


create table Ratings(
   userId int,
   movieId int,
   rating varchar(10),
   timestamp int
);


create table Ratings_Small(
   userId int,
   movieId int ,
   rating varchar(10),
   timestamp int
);



create table Keywords(
   id int PRIMARY KEY,
   keywords text
);



ALTER TABLE Ratings
ADD FOREIGN KEY (movieId) REFERENCES Links(movieId);

ALTER TABLE Ratings_Small
ADD FOREIGN KEY (movieId) REFERENCES Links(movieId);