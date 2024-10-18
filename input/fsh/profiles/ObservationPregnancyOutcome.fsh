Profile:		ObservationPregnancyOutcome
Parent:			Observation
Id:				observation-pregnancy-outcome
Title:			"Observation - Pregnancy Outcome"
Description:	"The result of the subject's delivery, such as live birth or not a live birth."
* code = $loinc#64710-7
* subject only Reference(Patient-child-vr)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.3123 (required)
* ^jurisdiction.coding = $country#US "United States of America"