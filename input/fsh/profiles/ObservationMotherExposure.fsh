Profile:		ObservationMotherExposure
Parent:			Observation
Id:				observation-mother-exposure
Title:			"Observation - Mother Exposure"
Description:	"The exposure of the mother to potentially harmful chemical, physical, or biological agents in the environment or to environmental factors that may include ionizing radiation, pathogenic organisms, or toxic chemicals that may cause fetal morbidity."
* code = $loinc#89496-4
* subject only Reference(Patient-child-vr)
* subject 1..1
* focus only Reference(RelatedPerson-mother-vr)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.113883.10.14.1.1.13.4 (extensible)
* ^jurisdiction.coding = $country#US "United States of America"