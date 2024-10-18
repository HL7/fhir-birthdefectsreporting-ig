Profile:		ObservationMotherDrugUse
Parent:			Observation
Id:				observation-mother-drug-use
Title:			"Observation - Mother Drug Use"
Description:	"An observation regarding maternal recreational drug use during pregnancy."
* code = $loinc#89495-6
* subject only Reference(Patient-child-vr)
* subject 1..1
* focus only Reference(RelatedPerson-mother-vr)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.113883.10.14.1.1.13.9 (extensible)
* ^jurisdiction.coding = $country#US "United States of America"