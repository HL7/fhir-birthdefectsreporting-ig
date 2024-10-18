CodeSystem: LocalBDRCodesCS
Id: CodeSystem-local-bdr-codes
Title: "Local BDR Codes"
Description: "Local Codes for concepts in BDR that lack an appropriate LOINC or SCT code"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false
* #loc_inpatient "InPatient"                  
* #loc_outpatient "OutPatient" 
* #unknown "Unknown" //equivalent to 9 in MI spec
* #status_admit_any "Any Admission"
* #status_admit_not-admitted "Not Admitted"
* #status_admit_transfer "Transferred"
* #status_discharge_alive "Discharged Alive"
* #status_discharge_transferred "Transferred"
* #status_discharge_dead "Discharged Dead"
* #status_discharge_not-discharged "Not Discharged"
* #postnatalecho "Postnatal Echo"