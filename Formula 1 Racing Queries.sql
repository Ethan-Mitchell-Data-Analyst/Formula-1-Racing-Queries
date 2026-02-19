SELECT constructorID FROM `Module 4`.constructors;
SELECT GivenName, FamilyName FROM `Module 4`.drivers;
SELECT COUNT(constructorId) FROM `Module 4`.constructors;
SELECT COUNT(FamilyName) FROM `Module 4`.drivers;
SELECT * FROM `Module 4`.results
	WHERE Season = 2020;
SELECT Name, Nationality FROM `Module 4`.constructors;
SELECT GivenName AS "FirstName", FamilyName AS "LastName" FROM `Module 4`.drivers;
SELECT DISTINCT Nationality FROM `Module 4`.drivers;
SELECT (points/position) AS "PointsPerPosition" FROM `Module 4`.driver_standings;
SELECT CONCAT(GivenName,' ',FamilyName) AS FullName FROM `Module 4`.drivers;
SELECT * FROM `Module 4`.results
	WHERE Season = 2022;
SELECT * FROM `Module 4`.drivers
	WHERE Nationality = 'German' OR Nationality = 'British';
SELECT * FROM `Module 4`.constructors
	WHERE Name LIKE 'Ferrari';
SELECT * FROM `Module 4`.constructors
	WHERE constructorID IN ('Ferrari', 'Williams');
SELECT * FROM `Module 4`.drivers
	WHERE DateOfBirth < 2000;
SELECT * FROM `Module 4`.results
	ORDER BY Season ASC;
SELECT * FROM `Module 4`.drivers
	ORDER BY Nationality, GivenName;
SELECT * FROM `Module 4`.results
	ORDER BY Points DESC;
SELECT * FROM `Module 4`.drivers
	ORDER BY DateOfBirth;
SELECT * FROM `Module 4`.driver_standings
	WHERE Season = 2020
    ORDER BY points DESC
    LIMIT 5;
SELECT * FROM `Module 4`.constructors
	LIMIT 10;
SELECT * FROM `Module 4`.drivers
	LIMIT 10 OFFSET 10;
SELECT * FROM `Module 4`.driver_standings
	WHERE Season = 2021
    ORDER BY points DESC
    LIMIT 10 OFFSET 5;
SELECT * FROM `Module 4`.results
	LIMIT 5;
SELECT DISTINCT * FROM `Module 4`.driver_standings
	WHERE Season = 2020
    LIMIT 10 OFFSET 10;
SELECT SUM(Points) FROM `Module 4`.results
	WHERE Season = 2024;
SELECT AVG(Points) FROM `Module 4`.results
	WHERE Season = 2000;
SELECT MAX(Points), MIN(Points) FROM `Module 4`.results
	WHERE Season = 2021;
SELECT COUNT(DISTINCT Round) FROM `Module 4`.results
	WHERE Season = 2000;
SELECT constructorId, SUM(points) FROM `Module 4`.constructor_standings
	WHERE Season = 2000
	GROUP BY constructorId;
SELECT constructorId, SUM(points) FROM `Module 4`.constructor_standings
	WHERE Season = 2002
	GROUP BY constructorId
    HAVING SUM(points) > 20;
SELECT constructorId, COUNT(DISTINCT round) FROM `Module 4`.constructor_standings
	WHERE Season = 2020
    GROUP BY constructorId;
SELECT DISTINCT DriverID, SUM(Points) FROM `Module 4`.results
	GROUP BY DriverID, Nationality;
SELECT Season, constructorID, AVG(points) FROM `Module 4`.constructor_standings
	GROUP BY constructorId, Season
    ORDER BY Season, constructorId;
SELECT DISTINCT `Module 4`.driver_standings.driverId, `Module 4`.results.ConstructorName FROM `Module 4`.driver_standings
	INNER JOIN `Module 4`.results ON `Module 4`.driver_standings.driverId = `Module 4`.results.DriverID
    WHERE results.Season = 2000;
SELECT `Module 4`.constructors.constructorId, `Module 4`.results_history.DriverID FROM `Module 4`.constructors
	LEFT JOIN `Module 4`.results_history ON `Module 4`.constructors.constructorId = `Module 4`.results_history.constructorId;
SELECT `Module 4`.drivers.driverId, `Module 4`.results.Season, `Module 4`.results.Round, `Module 4`.results.Position FROM `Module 4`.results
	RIGHT JOIN `Module 4`.drivers ON `Module 4`.results.DriverID = `Module 4`.drivers.driverId;
SELECT `Module 4`.drivers.driverId, `Module 4`.results.Season, `Module 4`.results.Round, `Module 4`.results.Position FROM `Module 4`.drivers
	LEFT JOIN `Module 4`.results ON `Module 4`.results.DriverID = `Module 4`.drivers.driverId;