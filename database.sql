CREATE DATABASE blackjack

--\c into blackjack

CREATE TABLE IF NOT EXISTS logins(
 id_login SERIAL PRIMARY KEY,
 login VARCHAR(30) NOT NULL,
 password VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS profiles(
 id_profile SERIAL PRIMARY KEY,
 email VARCHAR(60) NOT NULL,
 profile_pic_path VARCHAR,
 tokens INT, 
 gamesWon INT,
 CONSTRAINT fk_login
      FOREIGN KEY(id_login) 
      REFERENCES logins(id_login)
);

CREATE TABLE IF NOT EXISTS rooms(
 id_room SERIAL PRIMARY KEY,
 name VARCHAR(30) NOT NULL,
 maxPlayers INT
);

CREATE TABLE IF NOT EXISTS activeplayers(
 id_player SERIAL PRIMARY KEY,
 CONSTRAINT fk_profile
      FOREIGN KEY(id_profile) 
      REFERENCES profiles(id_profile)
 CONSTRAINT fk_room
      FOREIGN KEY(id_room) 
      REFERENCES rooms(id_room)
);