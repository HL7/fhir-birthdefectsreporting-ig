Profile:		ObservationPreviousPretermBirths
Parent:			Observation
Id:				observation-previous-preterm-births
Title:			"Observation - Mother Previous Preterm Births"
Description:	"The total number of children for the mother whose birth occurred through the end of the last day of the 37th week (259th day) following onset of the last menstrual period in previous pregnancies."
* code = $loinc#11637-6
* subject only Reference(Patient-mother-vr)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = $country#US "United States of America"