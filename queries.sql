-- SQLite queries for the Pharmacy database

-- 1. 
/*
    this query looks up information about a patient
    with the last name "Roger"
*/
SELECT firstName, birthdate, address
FROM PATIENT
WHERE lastName="Roger"

-- 2. 
/*
    this query looks up all prescriptions for Milly Roger
*/

SELECT genericName, dosage, PRESCRIPTIONS.NDC
FROM PRESCRIPTIONS, PATIENT, DRUGS
WHERE PRESCRIPTIONS.patientID = PATIENT.patientID
AND DRUGS.NDC = PRESCRIPTIONS.NDC
AND firstName="Milly" AND lastName = "Roger"

-- 3. 
/*
    this query looks up the phone number of the insurance company
    that Milly Roger is covered by
*/
SELECT INSURANCE.phone
FROM INSURANCE, PATIENT
WHERE INSURANCE.name = PATIENT.insurance
AND firstName="Milly" AND lastName="Roger"

-- 4.
/*
    ouput the amount that the insurance company will pay on behalf of the patients
    who have picked up their prescriptions
*/
SELECT PATIENT.patientID, INSURANCE.name AS InsuranceName, DRUGS.sellPrice AS AmountDue, INSURANCE.coPay
FROM PATIENT, DRUGS, PRESCRIPTIONS, INSURANCE
WHERE PRESCRIPTIONS.NDC = DRUGS.NDC
AND PATIENT.insurance = INSURANCE. name
AND PATIENT.patientID = PRESCRIPTIONS.patientID
AND PRESCRIPTIONS.status = "picked up"

-- 5.
/*
    find the most expensive drug
*/
SELECT brandName as DrugName, max(purchasePrice) as Price
FROM DRUGS

-- 6. 
/*
    find the average price of all drugs
*/
SELECT avg(sellPrice) as AverageDrugPrice
FROM DRUGS

-- 7.
/*
    find the most commonly prescribed drug
*/
SELECT NDC, count(NDC) AS Occurrences
FROM PRESCRIPTIONS
GROUP BY NDC
ORDER BY Occurrences DESC

-- 8. 
/*
    find patients who do not have any insurance coverage
*/
SELECT firstName, lastName, birthdate
FROM PATIENT
WHERE NOT EXISTS (
  SELECT *
  FROM INSURANCE
  WHERE INSURANCE.name = PATIENT.insurance
)

-- 9. 
/*
    Count the number of patients that are male and the number 
    that are female and order in descending order

*/
SELECT gender, count(gender) AS quantity
FROM PATIENT
WHERE gender IS NOT NULL
GROUP BY gender
ORDER BY quantity DESC

-- 10. 
/*
    Find the prescriptions we have not yet filled
*/
SELECT PRESCRIPTIONS.patientID, PRESCRIPTIONS.NDC, DRUGS.brandName, PRESCRIPTIONS.qty
FROM PRESCRIPTIONS, DRUGS
WHERE PRESCRIPTIONS.NDC = DRUGS.NDC AND PRESCRIPTIONS.status IS NULL

-- 11. 
/*
    Output all drugs with a dosage stronger than 25 mg and 
    sort them from weakest to strongest
*/
SELECT DRUGS.brandName, DRUGS.NDC, dosage
FROM DRUGS
WHERE dosage > 25
GROUP BY NDC
ORDER BY dosage ASC

