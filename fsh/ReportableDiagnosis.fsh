Alias:		codeList = http://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.113883.3.88.12.3221.7.4


Profile:        BDRReportableDiagnosis
Parent:         Condition
Id:             bdr-reportablediagnosis
Title:          "BDR Reportable Diagnosis"
Description:    "A description of a reportable birth defect diagnosis for the report subject"
* clinicalStatus 1..1
* verificationStatus 1..1
* subject only Reference(BDRPatient)
* code from codeList (preferred)
* onset[x] 1..1
* onset[x] only dateTime
* abatement[x] MS
