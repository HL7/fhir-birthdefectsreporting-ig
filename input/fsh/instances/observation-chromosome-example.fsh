Instance: ObservationChromosomeExample
InstanceOf: Observation
Title: "ObservationChromosomeExample"
Description: "ObservationChromosomeExample"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#62356-1 "Chromosome analysis result in ISCN expression"
* subject = Reference(Patient/PatientChildExample)
* effectiveDateTime = "2024-07-06T11:45:33Z"
* valueString = "46,XY,del(5)(q13q33)"