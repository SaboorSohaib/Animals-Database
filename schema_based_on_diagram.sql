CREATE TABLE patients(
id      INT GENERATED ALWAYS AS IDENTITY,
name    VARCHAR(20),
date_of_birth   date,
PRIMARY KEY (id)
);


CREATE TABLE medical_histories(
id       INT GENERATED ALWAYS AS IDENTITY,
admitted_at   TIMESTAMP,
patient_id   INT REFERENCES patients(id),
status    VARCHAR(50)
);