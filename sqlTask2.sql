-- patients who were treated by the doctor with the most admissions
SELECT * FROM patients
WHERE patient_id IN (
    SELECT patient_id FROM admissions
    WHERE attending_doctor_id = (
        SELECT attending_doctor_id
        FROM admissions
        GROUP BY attending_doctor_id
        ORDER BY COUNT(*) DESC
        LIMIT 1
    )
);
-- List all doctors who treated patients from 'Ontario'

SELECT * FROM doctors
WHERE doctor_id IN (
    SELECT attending_doctor_id FROM admissions
    WHERE patient_id IN (
        SELECT patient_id FROM patients
        WHERE province_id = (
            SELECT province_id FROM province_names
            WHERE province_name = 'Ontario'
        )
    )
);


-- Get the names of patients who have been admitted more than once
SELECT first_name, last_name FROM patients
WHERE patient_id IN (
    SELECT patient_id FROM admissions
    GROUP BY patient_id
    HAVING COUNT(*) > 1
);

-- patients whose attending doctor’s specialty is 'Cardiology'

SELECT * FROM patients
WHERE patient_id IN (
    SELECT patient_id FROM admissions
    WHERE attending_doctor_id IN (
        SELECT doctor_id FROM doctors
        WHERE specialty = 'Cardiology'
    )
);

-- List provinces that have more than 3 patients
SELECT province_name FROM province_names
WHERE province_id IN (
    SELECT province_id FROM patients
    GROUP BY province_id
    HAVING COUNT(*) > 3
);

-- Find doctors who have never admitted any patient
SELECT * FROM doctors
WHERE doctor_id NOT IN (
    SELECT DISTINCT attending_doctor_id FROM admissions
);

-- patient with the longest hospital stay
SELECT * FROM patients
WHERE patient_id = (
    SELECT *,(JULIANDAY(discharge_date) - JULIANDAY(admission_date)), patient_id FROM admissions
    ORDER BY JULIANDAY(discharge_date) - JULIANDAY(admission_date) DESC
    LIMIT 1
);


