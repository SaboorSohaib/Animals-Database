/* Populate database with sample data. */

INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Agumon', date '2020-02-03', 0, true, 10.23);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Gabumon', date '2018-11-15', 2, true, 8);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Pikachu', date '2021-01-07', 1, false, 15.04);
INSERT INTO animals(name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES('Devimon', date '2017-05-12', 5, true, 11);

/* Updated Table */
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Charmander', '2020-02-08', 0, false, -11);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Plantmon','2021-11-15', 2, true, -5.7);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Squirtle','1993-04-02', 3, false, -12.13);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Angemon','2005-06-12', 1, true, -45);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Boarmon','2005-06-07', 7, true, 20);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Blossom','1998-10-13', 3, true, 17);
INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES ('Ditto','2022-05-14', 4, true, 22);

/* Multiple Table */
                    /* Inserting Data to owners table */
INSERT INTO owners(full_name, age) VALUES ('Sam Smith', 34);
INSERT INTO owners(full_name, age) VALUES ('Jennifer Orwell', 19);
INSERT INTO owners(full_name, age) VALUES ('Bob', 45);
INSERT INTO owners(full_name, age) VALUES ('Melody Pond', 77);
INSERT INTO owners(full_name, age) VALUES ('Dean Winchester',14 );
INSERT INTO owners(full_name, age) VALUES ('Jodie Whittaker', 38);

                    /* Inserting Data to species table */
INSERT INTO species(name) VALUES ('Pokemon');
INSERT INTO species(name) VALUES ('Digimon');

                    /* Insert Data to foreign key species_id columns */
UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';
UPDATE animals SET species_id = 1  WHERE species_id IS NULL;

                    /* Insert Data to foreign key owner_id columns */
UPDATE animals SET owner_id = 1 WHERE name='Agumon';
UPDATE animals SET owner_id = 2 WHERE name='Gabumon';
UPDATE animals SET owner_id = 2 WHERE name='Pikachu';
UPDATE animals SET owner_id = 3 WHERE name='Devimon';
UPDATE animals SET owner_id = 3 WHERE name='Plantmon';
UPDATE animals SET owner_id = 4 WHERE name='Charmander';
UPDATE animals SET owner_id = 4 WHERE name='Squirtle';
UPDATE animals SET owner_id = 4 WHERE name='Blossom';
UPDATE animals SET owner_id = 5 WHERE name='Angemon';
UPDATE animals SET owner_id = 5 WHERE name='Boarmon';
