# appropriate_abx_public
The goal of appropriate_antibiotics is to ingest a dataset of patients with pneumonia and automatically label the first antibiotic as having recieved the appropriate antibiotic selection vs not to then allow for a small amount of manual review to verify flagged cases.

##Input Columns

###First Query, Columns for antibiotics table (make sure your data is in the below order, but column names do not matter, so no need to rename prior to ingestion by algorithm)
- 1=contact serial number (encounter ID)
- 2=MRN
- 3=date of birth
- 4= Admit DateTime
- 5=Discharge Service Abbreviation
- 6= Discharge Service description # the service the patient was discharged from
- 7=Service on a given date (service patient on on a given date (below))
- 8= date of service (date that patient on a given service)
- 9=ICD10 code
- 10=ICD 10 description
- 11=Medication Order DateTime
- 12=Medication
- 13=allergy substance 
- 14=allergy type (e.g food vs drug allergy)

###Second Query: This query will be to gather note text from the list of CSNs prior to the "Start NLP" stage

- 1=contact serial number (encounter ID)
- 2=NoteDT (Note date & time)
- 3=NoteType (e.g. H&P or ED MD Note)
- 4=NoteText 

##Output
Three tables of output will be generated. 
- Exclusions: This is a list of all patients with their "reason for exclusion" and other patient data. This spreadsheet allows for optional review of exlcusions to ensure you agree with assignments of included/excluded. 
- Full Review: This is a joined list that includes all included patients with their labels and identified regular expression + note context if applicable. This sheet allows for optional full review of all labels. 
- Note Data Context: This sheet includes only patients who were included in the NLP portion of the algorithm. This includes all identified phrases + note context. This should be reviewed to assign final assignments for each patient, including those labeled as still needing review. 
