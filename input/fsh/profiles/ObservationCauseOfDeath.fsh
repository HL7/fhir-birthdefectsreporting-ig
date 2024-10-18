Profile:		ObservationCauseOfDeath
Parent:			Observation
Id:				observation-cause-of-death
Title:			"Observation - Cause of Death"
Description:	"The cause of death of the birth defect report subject."
* code = $loinc#79378-6
* subject only Reference(Patient-child-vr)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.3593 (extensible)
* ^jurisdiction.coding = $country#US "United States of America"