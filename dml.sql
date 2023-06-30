-- DML statements for Pharmacy project
/*
    populate the schema using SQLite shell

*/
.import -L 1 DOCTOR.csv DOCTOR;
.import -L 1 DRUGS.csv DRUGS;
.import -L 1 INSURANCE.csv INSURANCE;
.import -L 1 PATIENT.csv PATIENT;
.import -L 1 PRESCRIPTIONS.csv PRESCRIPTIONS;
.import -L 1 SUPPLIER.csv SUPPLIER;

/*
    making modifications to the database
        
    NOTE: these are examples of the types of modifications 
    that could be made to a pharmacy database.
*/
-- 1. 
/*
    this query changes the supplier of Cozaar to "2"
*/
UPDATE DRUGS
SET supID = "2"
WHERE brandName = "Cozaar"

-- 2. 
/*
    this query adds a new patient to the database
*/
INSERT INTO PATIENT
VALUES ("Mark", "Johns", "09/05/2000", "897 Mallory Dr.", "(456)897-0908", "M", "Molina",NULL)

-- 3. 
/*
    this query updates the status of a prescription
*/
DELETE FROM PRESCRIPTIONS
WHERE status = "picked up" AND refills = "0"

-- 12.
/*
    Supplier 2 has raised all their prices, 
    reflect that onto our sell and purchase price
*/
UPDATE DRUGS
SET purchasePrice=purchasePrice*1.50, sellPrice = sellPrice*1.50
WHERE supID = 2

