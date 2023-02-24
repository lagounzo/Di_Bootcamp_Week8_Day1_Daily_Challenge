--@Autor N'ZO LAGOU


CREATE DATABASE hollywood
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
    
    
CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
)


INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('Matt','Damon','08/10/1970', 5);

INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('George','Clooney','06/05/1961', 2);

-- Add two more female actors in the table actors. Add them one by one
INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('Selena','Gomez','22/07/1992', 1);

INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('Brithney','Spears','02/12/1981', 4);

-- Add three more actors, add all of them in one query !
INSERT INTO actors (first_name, last_name, age, number_oscars)
VALUES('Johnny','Depp','09/06/1963', 3)
		('Amber','Heard','22/04/1986', 1)
		('Travis','Fimmel','15/07/1976', 2);
		
-- Retrieve everything from the table actors
SELECT * FROM public.actors 
ORDER BY actor_id ASC

-- EXERCICE DAILY CHALLENGE
-- 1)Count how many actors are in the table.
SELECT COUNT(*)
FROM actors;


-- 2) Try to add a new actor with some blank fields. What do you think the outcome will be ?
INSERT INTO actors (first_name, age)
VALUES('Houston','02/12/1981');

/*
	Resultat: ERROR: ERREUR:  une valeur NULL viole la contrainte NOT NULL de la colonne « last_name » dans la relation « actors »
	DETAIL:  La ligne en échec contient (11, Houston, null, 1981-12-02, null).

	SQL state: 23502
*/