-- 1. Retrieve all the number of backer_counts in descending order for each `cf_id` for the "live" campaigns.
select cf_id, backers_count, outcome 
from "campaign"
where outcome ='live'
order by backers_count DESC;

--2. Using the "backers" table confirm the results in the first query
SELECT cf_id, COUNT(backer_id) AS "backers_count"
FROM "backers"
GROUP BY cf_id
ORDER BY "backers_count" DESC;

-- 3. Create table email_contacts_remaining_goal_amount
SELECT a.first_name,
       a.last_name,
	  a.email,
	   (ca.goal-ca.pledged) AS "Remaining Goal Amount"
INTO email_contacts_remaining_goal_amount
FROM "contacts" AS a
JOIN "campaign" AS ca
ON (a.contact_id=ca.contact_id)
WHERE ca.outcome='live'
ORDER BY "Remaining Goal Amount" DESC;

-- 4 Check the table
SELECT *FROM email_contacts_remaining_goal_amount;

--5 Create table email_backers_remaining_goal_amount
SELECT ba.email,
       ba.first_name,
       ba.last_name,
	   ca.cf_id,
	   ca.company_name,
	   ca.description,
	   ca.end_date,
	   (ca.goal-ca.pledged) AS "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM "backers" AS ba
JOIN "campaign" AS ca
ON (ba.cf_id=ca.cf_id)
WHERE ca.outcome='live'
ORDER BY ba.last_name ASC;

--6 Check the table
SELECT *FROM email_backers_remaining_goal_amount;


