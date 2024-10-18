//this one can be removed - use us-core instead
Profile:		ObservationAdmissionToNICU
Parent:			Observation
Id:				observation-admission-to-nicu
Title:			"Observation - Admission to NICU"
Description:	"An observation to represent the admission of a newborn to neonatal intensive care unit."
* code = $sct#305351004
* subject only Reference(Patient-child-vr)
* subject 1..1
* value[x] only boolean
* value[x] 1..1
* ^jurisdiction.coding = $country#US "United States of America"