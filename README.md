# appropriate_abx_public
The goal of appropriate_antibiotics is to ingest fixed columns of data about patients with pneumonia and auto label each case as having likely appropriate antiobitcs prescribed vs not to then allow for a small amount of manual review to verify flagged cases.

*Input Columns*

First Query:

-CSN (hospital encounter ID)

-MRN

-Date of Birth

-Admit DateTime

-Service

-Diagnosis (Final Diagnoses)

-Med Order Date Time

-Med Admin Ingred Display (in list- anti-infectives)

-Med Admin Route

-Allergy Substance

*Second Query:*

-CSN (hospital encounter ID)

-Note sign DateTime

-Note Type

-Note Contents

