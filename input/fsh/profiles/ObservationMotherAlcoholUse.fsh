Profile:		ObservationMotherAlcoholUse
Parent:			Observation
Id:				observation-mother-alcohol-use
Title:			"Observation - Mother Alcohol Use"
Description:	"An observation regarding the mother's use of alcohol during the pregnancy."
* code = $sct#160573003
* subject only Reference(Patient-child-vr)
* subject 1..1
* focus only Reference(RelatedPerson-mother-vr)
* focus 1..1
* value[x] only string
* value[x] 1..1
* ^jurisdiction.coding = $country#US "United States of America"