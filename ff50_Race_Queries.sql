SELECT *
FROM Race.ForgottenFlorida50

-- How many states were represented in the race?
SELECT Count(DISTINCT State) AS distinct_count
FROM Race.ForgottenFlorida50

-- What was the average time of men vs women?
SELECT Gender,
	AVG(Total_Minutes) AS avg_time
FROM Race.ForgottenFlorida50
GROUP BY gender

-- What were the youngest and oldest ages in the race?
SELECT Gender, 
	MIN(Age) AS youngest,
	MAX(Age) AS oldest
FROM Race.ForgottenFlorida50
GROUP BY Gender

-- What was the average time for each age group?
WITH age_buckets AS (
SELECT Total_Minutes,
	CASE WHEN Age < 30 then 'age_20-29'
		 WHEN Age < 40 then 'age_30-39'
		 WHEN Age < 50 then 'age_40-49'
		 WHEN Age < 60 then 'age_50-59'
	 ELSE 'age_60+' END AS age_group
FROM Race.ForgottenFlorida50
)
SELECT age_group, AVG(Total_Minutes) AS avg_race_time
FROM age_buckets
GROUP BY age_group

-- Top 3 males and females:
WITH gender_rank AS (
SELECT rank() OVER (PARTITION BY Gender ORDER BY Total_Minutes ASC) AS gender_rank,
	fullname,
	Gender,
	Total_Minutes
FROM Race.ForgottenFlorida50
)
SELECT *
FROM gender_rank 
WHERE gender_rank < 4
ORDER BY Total_Minutes

USE Race;

CREATE VIEW vw_ff50 AS
SELECT
    fullname,
    Place,
    Time,
    Total_Minutes,
    City,
    State,
    Age,
    Gender,
    latlong
FROM
    Race.ForgottenFlorida50;




