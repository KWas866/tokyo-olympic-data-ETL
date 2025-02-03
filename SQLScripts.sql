--Count the number of athletes from each country:
SELECT Country, COUNT(*) as TotalAthletes
from athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;


--Calculate the total medals won by each country

SELECT TeamCountry,
SUM(Gold) TotalGold,
SUM(Silver) TotalSilver,
SUM(Bronze) TotalBronze
FROM medals
GROUP BY TeamCountry
ORDER BY TotalGold DESC;

--Calculate the average number of entries by gender for each discipline:
SELECT Discipline, 
AVG(Female) AvgFemale,
AVG(Male) AvgMale
FROM entriesgender
GROUP BY Discipline;

-- Calculate the average number of teams for each country
SELECT Country ,
COUNT(TeamName) TeamCount
from teams
GROUP BY Country
ORDER BY TeamCount DESC;
