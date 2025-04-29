Instance: DiagnosticReportExample
InstanceOf: USCoreDiagnosticReportProfileLaboratoryReporting
Title: "DiagnosticReportExample"
Description: "DiagnosticReportExample"
Usage: #example
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB "Laboratory"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count" //right now I don't know what the cytogentic testing result looks like so cbc it is
* subject = Reference(Patient/PatientChildExample) "Child Patient"
* encounter = Reference(Encounter/EncounterBDRExample) "Encounter"
* effectiveDateTime = "2024-07-05"
* issued = "2024-07-06T11:45:33Z"
* performer = Reference(Organization/ClinicSubmitterExample) "XYZ Clinic"
* result[0] = Reference(Observation/cbcLeukocytesExample) "LEUKOCYTES" //to be replaced with genetic test result here