Select * from MOVIE;
Select * from STUDIO;

Select * from MOVIE, STUDIO
WHERE studioname = name;

select TITLE, YEAR, STUDIONAME, ADDRESS
from MOVIE, STUDIO
WHERE STUDIONAME = name AND INCOLOR='y';

Select TITLE, YEAR, STUDIONAME, ADDRESS
from MOVIE
JOIN STUDIO on STUDIONAME = name
where INCOLOR = 'y';

Select m1.title
from MOVIE m1, Movie m2
where m2.TITLE = 'Star Wars'
	AND m1.LENGTH > m2.LENGTH;



select name, title
from MOVIESTAR
JOIN STARSIN on name = STARNAME
join MOVIE on MOVIETITLE = TITLE AND MOVIEYEAR = YEAR
where GENDER = 'F' AND STUDIONAME = 'MGM';


(Select title, YEAR
from MOVIE
where INCOLOR = 'y')
UNION
(Select movietitle, MOVIEYEAR
from STARSIN
where STARNAME = 'Harrison Ford');


(SELECT name, address
FROM MovieStar
WHERE gender = 'F')
INTERSECT
(SELECT name, address
FROM MovieExec
WHERE networth > 10000000);


(SELECT name, address
FROM MovieStar
WHERE gender = 'F')
EXCEPT
(SELECT name, address
FROM MovieExec
WHERE networth > 10000000);


(SELECT name, address
FROM MovieStar)
EXCEPT
(SELECT name, address
FROM MovieExec)
ORDER BY address;


select maker, laptop.model, price
FROM laptop
JOIN product
on Laptop.model = product.model
where screen = 15;



-- Ships tasks

SELECT battle
FROM Outcomes
WHERE result = 'sunk';


SELECT DISTINCT battle
FROM Outcomes
WHERE result = 'sunk';

-- Own

Select NAME, displacement
from SHIPS
JOIN CLASSES
on displacement = DISPLACEMENT
where displacement > 35000;


Select SHIPS.NAME, type, numguns, BATTLES.NAME
from SHIPS
JOIN CLASSES
on type = TYPE AND numguns = NUMGUNS
JOIN BATTLES
on BATTLES.NAME = BATTLES.NAME
where BATTLES.NAME = 'Guadalcanal';


SELECT SHIPS.NAME, TYPE, COUNTRY
FROM SHIPS
JOIN CLASSES
ON TYPE = TYPE AND COUNTRY = COUNTRY
WHERE TYPE = 'bb'
UNION
SELECT SHIPS.NAME, TYPE, COUNTRY
FROM SHIPS
JOIN CLASSES
ON TYPE = TYPE AND COUNTRY = COUNTRY
WHERE TYPE = 'bc' 


SELECT OUTCOMES.SHIP
FROM OUTCOMES, OUTCOMES AS OUTCOMES2
WHERE OUTCOMES.RESULT = 'damaged' AND OUTCOMES.SHIP = OUTCOMES2.SHIP AND OUTCOMES.BATTLE <> OUTCOMES2.BATTLE;


SELECT * FROM OUTCOMES
ORDER BY SHIP;

