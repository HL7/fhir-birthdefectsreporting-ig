Instance: DiagnosticGeneticTestResultExample
InstanceOf: USCoreDiagnosticReportProfileLaboratoryReporting
Title: "DiagnosticGeneticTestResultExample"
Description: "DiagnosticGeneticTestResultExample"
Usage: #example
* status = #final
* category[LaboratorySlice] = $v2-0074#LAB "Laboratory"
* code = $loinc#77314-3 "Chromosome analysis basic associated observations panel - Blood or Tissue by Cytogenetics"
* subject = Reference(Patient/PatientChildExample) "Child Patient"
* specimen = Reference(Specimen1Example)
* effectiveDateTime = "2024-07-05"
* issued = "2024-07-06T11:45:33Z"
* performer = Reference(Organization/ClinicSubmitterExample) "XYZ Clinic"
* result[0] = Reference(Observation/ObservationChromosomeExample)
* result[+] = Reference(Observation/ObservationInterpretationExample)
* conclusion = "Deletion of the long arm of chromosome 5."