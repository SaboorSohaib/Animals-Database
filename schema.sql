/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
 id               INT GENERATED ALWAYS AS IDENTITY,
 name             VARCHAR(50),
 date_of_birth    date,
 escape_attempts  INT,
 neutered         boolean,
 weight_kg        decimal,
 PRIMARY KEY (id)
 );
ALTER TABLE animals ADD COLUMN species VARCHAR(20);


/* Multiple Table */
                /* owners Table */
CREATE TABLE owners (
 id       INT GENERATED ALWAYS AS IDENTITY,
 full_name  VARCHAR(20),
 age      INT,
 PRIMARY KEY (id)
 );

                /* species Table */
 CREATE TABLE species (
 id       INT GENERATED ALWAYS AS IDENTITY,
 name     VARCHAR(20),
 PRIMARY KEY (id)
 );


               /* Remove species column */
  ALTER TABLE animals DROP COLUMN species;

  ALTER TABLE animals ADD COLUMN species_id INT;
  ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species (id);

  ALTER TABLE animals ADD COLUMN owner_id INT;
  ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners (id);


  /* Join Tables */

CREATE TABLE vets (
id             INT GENERATED ALWAYS AS IDENTITY,
name           VARCHAR(20),
age            INT,
date_of_graduation     date,
PRIMARY KEY (id)
);


CREATE TABLE specializations(
 species_id  INT  REFERENCES  species (id),
 vets_id     INT   REFERENCES  vets (id),
 PRIMARY KEY (species_id, vets_id)
);


CREATE TABLE visits (
animals_id        INT REFERENCES animals(id),
vets_id           INT REFERENCES vets(id),
visit_date        date,
PRIMARY KEY (animals_id, vets_id, visit_date)
);