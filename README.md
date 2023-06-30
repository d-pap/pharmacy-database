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

## Conclusion

The findings from these queries provide information about the data in the pharmacy database that would be similar to the things a pharmacy would use the database for, such as the drugs being purchased from a supplier, the number of male and female patients, and the most prescribed drugs. The queries also show updates that a pharmacy would need to make to the data in the database, such as removing prescriptions that have already been picked up and have no refills remaining and raising the prices of drugs purchased from a supplier. Additionally, the queries output specific information about patients, such as the phone number of their insurance and the prescriptions they have received. Overall, these queries allow users to analyze and manipulate the data in the database to gain insights and make updates as needed.
