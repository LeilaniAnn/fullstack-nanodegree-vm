
-- connect to the database
DROP DATABASE tournament;
CREATE DATABASE tournament;
\c tournament


-- Drops all views and tables inside the database tournament in case
-- they already exist. If not it will skip over this task
DROP VIEW IF EXISTS standings;
DROP VIEW IF EXISTS wins;
DROP VIEW IF EXISTS losses;
DROP TABLE IF EXISTS matches;
DROP TABLE IF EXISTS players;

-- Creates the needed tables and columns
CREATE TABLE players (id SERIAL primary key, name TEXT);
CREATE TABLE matches (winner INT references players(id), 
					 loser INT references players(id));

-- Creates the view wins, which returns the players id, name, 
-- and number of wins that they have
CREATE VIEW wins AS
	SELECT players.id, players.name, count(matches.winner) AS wins
	FROM players
		LEFT JOIN matches ON players.id = matches.winner
	GROUP BY players.id, players.name;

-- Creates the view losses, which returns the players id, name, 
-- and number of losses that they have
CREATE VIEW losses AS
	SELECT players.id, players.name, count(matches.loser) AS losses
	FROM players
		LEFT JOIN matches ON players.id = matches.loser
	GROUP BY players.id, players.name;

-- Creates the view standings, which returns the players id, name, 
-- number of wins that they have, and the number of matches they've played in
CREATE VIEW standings AS
	SELECT players.id, players.name, wins.wins, 
	wins.wins + losses.losses AS matches
	FROM players
		LEFT JOIN wins ON players.id = wins.id
		LEFT JOIN losses ON players.id = losses.id
	GROUP BY players.id, players.name, wins.wins, losses.losses
	ORDER BY wins desc;