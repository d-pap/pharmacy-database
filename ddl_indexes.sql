/*************************************************************
    INDEXES
*************************************************************/

-- indexing to speed up lastName search in PATIENT table
CREATE INDEX "last_name_idx" ON "PATIENT" (
	"lastName"	ASC
);

-- indexing to speed up first and lastName search in PATIENT table
CREATE INDEX "first_last_name_idx" ON "PATIENT" (
	"firstName",
	"lastName"	ASC
);

-- index on the status and refills columns of PRESCRIPTIONS
CREATE INDEX "refills_idx" ON "PRESCRIPTIONS" (
	"refills",
	"status"	ASC
);

-- index on the insurance column of PATIENT
CREATE INDEX "insurance_idx" ON "PATIENT" (
	"insurance"	ASC
);