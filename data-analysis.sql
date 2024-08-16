--Show number of interaction by customer
SELECT user_id, COUNT(*) AS customer_interactions
	FROM events
	GROUP BY user_id;
	
--Show number of interactions by company
SELECT company, COUNT(*) AS company_interactions
FROM people
GROUP BY company;

--Show which users have the lower interactions (<100)
SELECT user_id, COUNT(*) AS customer_interactions
FROM events
GROUP BY user_id
HAVING COUNT(*) < 100;

--Show which users have the higher interactions (>=100)
SELECT user_id, COUNT(*) AS customer_interactions
FROM events
GROUP BY user_id
HAVING COUNT(*) >= 100;

--Repeat for companies
-- Show which companies have lower interactions (<8)
SELECT company, COUNT(*) AS company_interactions
FROM people
GROUP BY company
HAVING COUNT(*) < 8;

-- Show which companies have higher interactions (>=8)
SELECT company, COUNT(*) AS company_interactions
FROM people
GROUP BY company
HAVING COUNT(*) >= 8;
--Apollo Ltd had the most interactions by far, and Posedon LLC had the least
