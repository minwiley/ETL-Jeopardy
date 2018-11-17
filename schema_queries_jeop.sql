CREATE DATABASE jeopardy;

USE jeopardy;

DROP TABLE complete_jeopardy;

CREATE TABLE complete_jeopardy (
      question_id INT AUTO_INCREMENT PRIMARY KEY,  
	  Game_ID INT ,
      Jeopardy_Double TEXT ,
      Rnd INT,
      Air_Date TEXT,
	  Category TEXT,
      Dollar_Value TEXT,
      Question MEDIUMTEXT,
      Answer TEXT,
      Year INT
);

DROP TABLE facial_hair;

CREATE TABLE facial_hair (
	hair_id INT PRIMARY KEY,
    Year INT,
    Cleanshaven TEXT,
    Full_Beard_Chinstrap TEXT, 
    Goatee TEXT,
    Moustache TEXT,
    Moustache_wMuttonchops TEXT,
    Moustache_wSideburns TEXT,
    Muttonchops TEXT,
	Sideburns TEXT
);

DROP TABLE dm_rates;

CREATE TABLE dm_rates(
	dm_id INT PRIMARY KEY,
    Year INT,
    Population TEXT,
    Marriages TEXT,
    Divorces TEXT
);

DROP TABLE ted_up;

CREATE TABLE ted_up(
	ted_id INT PRIMARY KEY,
    speaker TEXT,
    headline TEXT,
    URL TEXT,
    description TEXT,
    month_filmed INT,
    Year INT,
    event TEXT,
    duration TEXT,
    date_published TEXT,
    views FLOAT,
    tags TEXT
);


CREATE TABLE complete_worldpop(
    Year INT PRIMARY KEY,
    world_population FLOAT
);


SELECT * FROM complete_jeopardy;
SELECT * FROM facial_hair;
SELECT * FROM dm_rates;
SELECT * FROM ted_up;
SELECT * FROM complete_worldpop;