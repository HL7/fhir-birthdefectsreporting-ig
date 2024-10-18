Profile:		ObservationMotherLaborOnset
Parent:			Observation
Id:				observation-mother-labor-onset
Title:			"Observation - Mother Labor Onset"
Description:	"Serious complications experienced by the mother associated with labor and delivery."
* code = $loinc#73774-2
* subject only Reference(Patient-mother-vr)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7123 (required)
* ^jurisdiction.coding = $country#US "United States of America"