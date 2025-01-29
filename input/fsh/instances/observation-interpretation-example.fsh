Instance: ObservationInterpretationExample
InstanceOf: Observation
Title: "ObservationInterpretationExample"
Description: "ObservationInterpretationExample"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#22637-3 "Pathology report final diagnosis Narrative"
* subject = Reference(Patient/PatientChildExample)
* effectiveDateTime = "2024-07-06T11:45:33Z"
* valueString = "Deletion of the long arm of chromosome 5."