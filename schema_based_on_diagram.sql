CREATE DATABASE clinic 

CREATE TABLE patients(
id      INT GENERATED ALWAYS AS IDENTITY,
name    VARCHAR(20),
date_of_birth   date,
PRIMARY KEY (id)
);


CREATE TABLE medical_histories(
id       INT GENERATED ALWAYS AS IDENTITY,
admitted_at   TIMESTAMP NOT NULL DEFAULT NOW(),
patient_id   INT REFERENCES patients(id),
status    VARCHAR(50),
PRIMARY KEY (id)
);


CREATE TABLE treatments(
id        INT GENERATED ALWAYS AS IDENTITY,
type      VARCHAR(50),
name      VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE invoices(
id INT GENERATED ALWAYS AS IDENTITY,
total_amount DECIMAL,
generated_at TIMESTAMP NOT NULL DEFAULT NOW(),
payed_at TIMESTAMP,
medical_history_id INT UNIQUE REFERENCES medical_histories(id),
PRIMARY KEY (id)
);


CREATE TABLE invoices_items(
id INT GENERATED ALWAYS AS IDENTITY,
unit_price DECIMAL,
quantity INT,
total_price DECIMAL,
invoice_id INT REFERENCES invoices(id),
treatment_id INT REFERENCES treatments(id),
PRIMARY KEY (id)
);


CREATE TABLE medical_histories_treatments(
medical_history__id INT REFERENCES medical_histories(id),
treatments_id INT REFERENCES treatments(id)
);

--Create Indexes on all tables:

CREATE INDEX ON medical_histories (patient_id);
CREATE INDEX ON invoices (medical_history__id);
CREATE INDEX ON invoices_items (invoice_id);
CREATE INDEX ON invoices_items (treatment_id);
CREATE INDEX ON medical_histories_treatments (medical_history_id);
CREATE INDEX ON medical_histories_treatments (treatment_id);
