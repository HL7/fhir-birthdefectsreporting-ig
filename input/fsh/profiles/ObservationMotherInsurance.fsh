Profile:		ObservationMotherInsurance
Parent:			Observation
Id:				observation-mother-insurance
Title:			"Observation - Mother Primary Insurance"
Description:	"The primary insurance type for the delivery."
* code = $loinc#76437-3
* subject only Reference(Patient-mother-vr)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.114222.4.11.7163 (extensible)
* ^jurisdiction.coding = $country#US "United States of America"