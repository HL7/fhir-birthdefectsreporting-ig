Profile:		ObservationTotalPregnancies
Parent:			Observation
Id:				observation-total-pregnancies
Title:			"Observation - Mother Total Pregnancies"
Description:	"The mother's total number of prior pregnancies before the current one."
* code = $loinc#11996-6
* subject only Reference(Patient-mother-vr)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = $country#US "United States of America"