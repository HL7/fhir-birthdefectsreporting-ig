//this one is optional - potentially remove
Profile:		ObservationLocationOfDeath
Parent:			Observation
Id:				observation-location-of-death
Title:			"Observation - Location of Death"
Description:	"The location of death of the report subject."
* code = $loinc#58332-8
* subject only Reference(Patient-child-vr)
* subject 1..1
* value[x] only string
* value[x] 1..1
* ^jurisdiction.coding = $country#US "United States of America"