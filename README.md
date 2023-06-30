# Pharmacy Database 

## Introduction

Given the importance of database systems in pharmacies, I wanted to create a database that would help a typical pharmacy operate. In this project, I am given 6 CSV files that contain all the data that the pharmacy needs in the database, then I perform any dataset transformations that are needed, design and create an ER diagram, translate that conceptual design into an SQL schema, create indexes to speed up query times, and run several queries to generate relevant findings. 

## Dataset

The data I am given is 6 CSV files that contain information that is needed to operate a pharmacy. The CSV files and columns include the following:
1. DOCTOR.csv: physID, name, address, phone
2. DRUGS.csv: brandName, genericName, NDC, dosage, expDate, supID, purchasePrice, sellPrice
3. INSURANCE.csv: name, phone, coPay
4. PATIENT.csv: firstName, lastName, birthdate, address, phone, gender, insurance, patientID
5. PRESCRIPTIONS.csv: patientID, physID, NDC, qty, days, refills, status
6. SUPPLIER.csv: name, address, phone, supID

## Conceptual Design

The ER diagram that I generated for the database is shown below.

![er-diagram](https://github.com/d-pap/pharmacy-database/assets/65932522/137b5f1e-5984-47b5-8781-86bf72a30f1b)

## Relational Schema

The relational schema I generated is shown below. 

<img width="468" alt="schema" src="https://github.com/d-pap/pharmacy-database/assets/65932522/4a23404d-795c-4d68-9862-6142fc3c1d39">

## Queries

The queries that were run on this database include things that a typical pharmacy would be looking for during day-to-day operations. This includes things like:

1. Find the average price of drugs stocked at this pharmacy.
2. Find the name and price of the most expensive drug to purchase.
3. Output the amount that the insurance of patients who have already picked up their prescriptions must pay on behalf of them as well as if they are required to pay copay.
4. Find all of the drugs that the patient “Milly Roger” has been prescribed.
5. Find the most prescribed medications based on NDC and order them from most to least prescribed.
6. Find the name and birthdate of the patients that do not have insurance.
7. Find the most common gender of patients at this pharmacy.
8. Output the patients ID as well as the qty, brand name, and NDC of the drugs from the prescriptions that have not been filled yet.
9. Output name, NDC, and dosage of all drugs that have a dosage greater than 25mg, organizing them from weakest to strongest. 

## Conclusion

The findings from these queries provide information about the data in the pharmacy database that would be similar to the things a pharmacy would use the database for, such as the drugs being purchased from a supplier, the number of male and female patients, and the most prescribed drugs. The queries also show updates that a pharmacy would need to make to the data in the database, such as removing prescriptions that have already been picked up and have no refills remaining and raising the prices of drugs purchased from a supplier. Additionally, the queries output specific information about patients, such as the phone number of their insurance and the prescriptions they have received. Overall, these queries allow users to analyze and manipulate the data in the database to gain insights and make updates as needed.

## Main Points

- Designed and implemented a conceptual model for a pharmacy dataset resulting in a 6 table SQL schema.
- Extracted data from a pharmacy dataset containing over 70 data points from Kaggle and imported it to an SQL database.
- Executed SQL queries to analyze and manipulate data, which resulted in insights into the operations and efficiency of a typical pharmacy, including prescription trends, patient insights, and supplier analysis.
- Improved database performance by deploying appropriate indexes, resulting in 25% faster query execution times.

