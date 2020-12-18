SELECT incident_severity, incident_state, incident_city, incident_location, CONVERT_TO_INTEGER(incident_hour_of_the_day, 1, 1, 0) AS incident_hour_of_the_day
FROM "@s_dangi".Techfest_FINAL.incident
SELECT incident_severity, incident_location
FROM "@s_dangi".Techfest_FINAL.incident

SELECT CONVERT_TO_INTEGER(months_as_customer, 1, 1, 0) AS months_as_customer, CONVERT_TO_INTEGER(age, 1, 1, 0) AS age, CONVERT_TO_INTEGER(policy_number, 1, 1, 0) AS policy_number, TO_DATE(policy_bind_date, 'DD-MM-YYYY', 1) AS policy_bind_date, policy_state, policy_csl, CONVERT_TO_INTEGER(policy_deductable, 1, 1, 0) AS policy_deductable, CONVERT_TO_FLOAT(policy_annual_premium, 1, 1, 0) AS policy_annual_premium, CONVERT_TO_INTEGER(umbrella_limit, 1, 1, 0) AS umbrella_limit, CONVERT_TO_INTEGER(insured_zip, 1, 1, 0) AS insured_zip, insured_education_level, insured_occupation, insured_hobbies, CONVERT_TO_INTEGER("capital-gains", 1, 1, 0) AS "capital-gains", CONVERT_TO_INTEGER("capital-loss", 1, 1, 0) AS "capital-loss", TO_DATE(incident_date, 'DD-MM-YYYY', 1) AS incident_date, incident_type, collision_type, authorities_contacted, CONVERT_TO_INTEGER(number_of_vehicles_involved, 1, 1, 0) AS number_of_vehicles_involved, property_damage, CONVERT_TO_INTEGER(bodily_injuries, 1, 1, 0) AS bodily_injuries, CONVERT_TO_INTEGER(witnesses, 1, 1, 0) AS witnesses, police_report_available, CONVERT_TO_INTEGER(total_claim_amount, 1, 1, 0) AS total_claim_amount, CONVERT_TO_INTEGER(injury_claim, 1, 1, 0) AS injury_claim, CONVERT_TO_INTEGER(property_claim, 1, 1, 0) AS property_claim, CONVERT_TO_INTEGER(vehicle_claim, 1, 1, 0) AS vehicle_claim, auto_make, auto_model, CONVERT_TO_INTEGER(auto_year, 1, 1, 0) AS auto_year
FROM "@s_dangi".Techfest_FINAL.main
WHERE (collision_type IN ('Front Collision', 'Side Collision', 'Rear Collision')) AND (property_damage IN ('NO', 'YES')) AND (police_report_available IN ('YES', 'NO'))

SELECT * FROM gender

SELECT * FROM "fraud detection"