SELECT COUNT(*) AS total_patients FROM patients;
SELECT AVG(cost) AS avg_cost FROM treatments;
SELECT diagnosis, COUNT(*) AS count
FROM visits
GROUP BY diagnosis
ORDER BY count DESC
LIMIT 1;
SELECT d.name, COUNT(v.visit_id) AS total_visits
FROM doctors d
JOIN visits v ON d.doctor_id = v.doctor_id
GROUP BY d.name;
SELECT p.name, SUM(t.cost) AS total_spent
FROM patients p
JOIN visits v ON p.patient_id = v.patient_id
JOIN treatments t ON v.visit_id = t.visit_id
GROUP BY p.name;
SELECT 
    outcome,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM outcomes) AS percentage
FROM outcomes
GROUP BY outcome;
SELECT treatment_type, SUM(cost) AS total_cost
FROM treatments
GROUP BY treatment_type
ORDER BY total_cost DESC
LIMIT 1;
