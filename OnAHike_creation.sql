-- creation file --

use db_hikes;
CREATE TABLE Hikers(
   ID_hiker INT,
   name VARCHAR(50),
   email VARCHAR(50), -- check for @ -> done
   surname VARCHAR(50),
   favorites VARCHAR(50), -- check for list -> to add in another table -> done 
   to_do VARCHAR(50), -- check for list -> create new table -> dropped (not needed anymore)
   number_of_hikes int, 
   number_of_km int,
   level VARCHAR(50), -- check for beginner, experienced, advanced, jedi master -> done
   PRIMARY KEY(ID_hiker)
);

CREATE TABLE Region(
   Region_name VARCHAR(50),
   number_of_trail INT,
   PRIMARY KEY(Region_name)
);

CREATE TABLE trails(
   ID_trail INT,
   name VARCHAR(50),
   length__km_ INT,
   elevation_gain INT,
   total_accomplishments INT,
   number_of_camps INT,
   duration time,
   number_of_deaths int,
   difficulty VARCHAR(50), -- check for beginner, experienced, advanced, jedi master -> done
   Region_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(ID_trail),
   FOREIGN KEY(Region_name) REFERENCES Region(Region_name)
);

CREATE TABLE Camps(
   camp_ID INT,
   name VARCHAR(50),
   distance_from_last_stop INT,
   distance_to_next_stop VARCHAR(50),
   number_of_places VARCHAR(50),
   sleepable_at boolean,
   ID_trail INT NOT NULL,
   PRIMARY KEY(camp_ID),
   FOREIGN KEY(ID_trail) REFERENCES trails(ID_trail)
);

CREATE TABLE has_completed(
   ID_hiker INT,
   ID_trail INT,
   PRIMARY KEY(ID_hiker, ID_trail),
   FOREIGN KEY(ID_hiker) REFERENCES Hikers(ID_hiker),
   FOREIGN KEY(ID_trail) REFERENCES trails(ID_trail)
);

CREATE TABLE rates_a_camp(
   ID_hiker INT,
   camp_ID INT,
   rate INT, -- check between 0 and 5 -> done
   comment VARCHAR(50),
   PRIMARY KEY(ID_hiker, camp_ID),
   FOREIGN KEY(ID_hiker) REFERENCES Hikers(ID_hiker),
   FOREIGN KEY(camp_ID) REFERENCES Camps(camp_ID)
);

CREATE TABLE rates_a_trail(
   ID_hiker INT,
   ID_trail INT,
   rate INT, -- Check between 0 and 5 -> done
   comment VARCHAR(50),
   PRIMARY KEY(ID_hiker, ID_trail),
   FOREIGN KEY(ID_hiker) REFERENCES Hikers(ID_hiker),
   FOREIGN KEY(ID_trail) REFERENCES trails(ID_trail)
);

create table has_favorites( -- added after deleting "favorites" in table Hikers
	ID_hiker int,
    ID_trail int,
    primary key(ID_Hiker, ID_trail),
    foreign key (ID_hiker) references Hikers(ID_hiker),
    foreign key (Id_trail) references trails(ID_trail)
);

