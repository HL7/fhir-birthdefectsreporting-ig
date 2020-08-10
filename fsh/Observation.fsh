Alias:			LN = http://loinc.org
Alias:			SCT = http://snomed.info/sct
Alias:			COUNTRY = urn:iso:std:iso:3166


Profile:		ObservationMotherLaborOnset
Parent:			Observation
Id:				observation-mother-labor-onset
Title:			"Observation - Mother Labor Onset"
Description:	"Serious complications experienced by the mother associated with labor and delivery."
* code = LN#73774-2
* subject only Reference(PatientMother)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7123 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationCauseOfDeath
Parent:			Observation
Id:				observation-cause-of-death
Title:			"Observation - Cause of Death"
Description:	"The cause of death of the birth defect report subject."
* code = LN#79378-6
* subject only Reference(PatientChild)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.3593 (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


//this one is optional - potentially remove
Profile:		ObservationLocationOfDeath
Parent:			Observation
Id:				observation-location-of-death
Title:			"Observation - Location of Death"
Description:	"The location of death of the report subject."
* code = LN#58332-8
* subject only Reference(PatientChild)
* subject 1..1
* value[x] only string
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		ObservationPregnancyOutcome
Parent:			Observation
Id:				observation-pregnancy-outcome
Title:			"Observation - Pregnancy Outcome"
Description:	"The result of the subject's delivery, such as live birth or not a live birth."
* code = LN#64710-7
* subject only Reference(PatientChild)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=30D44BBC-617F-DD11-B38D-00188B398520 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		ObservationAdmissionToNICU
Parent:			Observation
Id:				observation-admission-to-nicu
Title:			"Observation - Admission to NICU"
Description:	"An observation to represent the admission of a newborn to neonatal intensive care unit."
* code = SCT#305351004
* subject only Reference(PatientChild)
* subject 1..1
* value[x] only boolean
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationBirthHeadCircumference
Parent:			Observation
Id:				observation-birth-head-circumference
Title:			"Observation - Birth Head Circumference"
Description:	"The head circumference of the subject at the time of birth."
* code = LN#8290-9
* subject only Reference(PatientChild)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationBirthHeight
Parent:			Observation
Id:				observation-birth-height
Title:			"Observation - Birth Height"
Description:	"The height (body length) of the subject at the time of birth."
* code = LN#8305-5
* subject only Reference(PatientChild)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationMotherAlcoholUse
Parent:			Observation
Id:				observation-mother-alcohol-use
Title:			"Observation - Mother Alcohol Use"
Description:	"An observation regarding the mother's use of alcohol during the pregnancy."
* code = SCT#160573003
* subject only Reference(PatientChild)
* subject 1..1
* focus only Reference(RelatedPersonMother)
* focus 1..1
* value[x] only string
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationMotherDrugUse
Parent:			Observation
Id:				observation-mother-drug-use
Title:			"Observation - Mother Drug Use"
Description:	"An observation regarding maternal recreational drug use during pregnancy."
* code = LN#89495-6
* subject only Reference(PatientChild)
* subject 1..1
* focus only Reference(RelatedPersonMother)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=07AE5520-13E9-4249-8F3C-23C8E14D6298 (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationMotherExposure
Parent:			Observation
Id:				observation-mother-exposure
Title:			"Observation - Mother Exposure"
Description:	"The exposure of the mother to potentially harmful chemical, physical, or biological agents in the environment or to environmental factors that may include ionizing radiation, pathogenic organisms, or toxic chemicals that may cause fetal morbidity."
* code = LN#89496-4
* subject only Reference(PatientChild)
* subject 1..1
* focus only Reference(RelatedPersonMother)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=39D91E87-2C93-E711-A03D-0017A477041A (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ObservationMotherInsurance
Parent:			Observation
Id:				observation-mother-insurance
Title:			"Observation - Mother Primary Insurance"
Description:	"The primary insurance type for the delivery."
* code = LN#76437-3
* subject only Reference(PatientMother)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7163 (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		ObservationTotalPregnancies
Parent:			Observation
Id:				observation-total-pregnancies
Title:			"Observation - Mother Total Pregnancies"
Description:	"The mother's total number of prior pregnancies before the current one."
* code = LN#11996-6
* subject only Reference(PatientMother)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		ObservationPreviousPretermBirths
Parent:			Observation
Id:				observation-previous-preterm-births
Title:			"Observation - Mother Previous Preterm Births"
Description:	"The total number of children for the mother whose birth occurred through the end of the last day of the 37th week (259th day) following onset of the last menstrual period in previous pregnancies."
* code = LN#11637-6
* subject only Reference(PatientMother)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"
