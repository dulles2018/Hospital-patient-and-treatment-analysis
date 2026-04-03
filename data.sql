INSERT INTO patients VALUES
(1, 'Alice', 34, 'F'),
(2, 'Bob', 50, 'M'),
(3, 'Charlie', 28, 'M');

INSERT INTO doctors VALUES
(1, 'Dr. Smith', 'Cardiology'),
(2, 'Dr. Lee', 'Neurology');

INSERT INTO visits VALUES
(1, 1, 1, '2025-01-01', 'Hypertension'),
(2, 2, 1, '2025-01-02', 'Heart Disease'),
(3, 3, 2, '2025-01-03', 'Migraine');

INSERT INTO treatments VALUES
(1, 1, 'Medication', 200),
(2, 2, 'Surgery', 5000),
(3, 3, 'Therapy', 300);

INSERT INTO outcomes VALUES
(1, 1, 'Recovered'),
(2, 2, 'Improving'),
(3, 3, 'Recovered');
