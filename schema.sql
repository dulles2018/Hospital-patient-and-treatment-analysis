-- Patients Table
CREATE TABLE patients (
    patient_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    gender TEXT
);

-- Doctors Table
CREATE TABLE doctors (
    doctor_id INTEGER PRIMARY KEY,
    name TEXT,
    specialty TEXT
);

-- Visits Table
CREATE TABLE visits (
    visit_id INTEGER PRIMARY KEY,
    patient_id INTEGER,
    doctor_id INTEGER,
    visit_date TEXT,
    diagnosis TEXT,
    FOREIGN KEY(patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY(doctor_id) REFERENCES doctors(doctor_id)
);

-- Treatments Table
CREATE TABLE treatments (
    treatment_id INTEGER PRIMARY KEY,
    visit_id INTEGER,
    treatment_type TEXT,
    cost REAL,
    FOREIGN KEY(visit_id) REFERENCES visits(visit_id)
);

-- Outcomes Table
CREATE TABLE outcomes (
    outcome_id INTEGER PRIMARY KEY,
    visit_id INTEGER,
    outcome TEXT,
    FOREIGN KEY(visit_id) REFERENCES visits(visit_id)
);
