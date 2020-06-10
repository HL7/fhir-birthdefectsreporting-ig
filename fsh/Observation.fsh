Alias:			LN = http://loinc.org
Alias:			SCT = http://snomed.info/sct

Profile:		BDRCauseOfDeath
Parent:			Observation
Id:				bdr-causeofdeath
Title:			"Observation - Cause of Death (BDR)"
Description:	"The cause of death of the birth defect report subject."
* code = LN#79378-6
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.3593 (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


//this one is optional - potentially remove
Profile:		BDRLocationOfDeath
Parent:			Observation
Id:				bdr-locationofdeath
Title:			"Observation - Location of Death (BDR)"
Description:	"The location of death of the birth defect report subject."
* code = LN#58332-8
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only string
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRPregnancyOutcome
Parent:			Observation
Id:				bdr-pregnancyoutcome
Title:			"Observation - Pregnancy Outcome"
Description:	"The result of the subject's delivery, such as live birth or not a live birth."
* code = LN#64710-7
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=30D44BBC-617F-DD11-B38D-00188B398520 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRAdmissionToNICU
Parent:			Observation
Id:				bdr-admissiontonicu
Title:			"Observation - Admission to NICU (BDR)"
Description:	"An observation to represent the admission of a newborn to neonatal intensive care unit."
* code = LN#79378-6
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only boolean
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRBirthHeadCircumference
Parent:			Observation
Id:				bdr-birthheadcircumgerence
Title:			"Observation - Birth Head Circumference (BDR)"
Description:	"The head circumference of the subject at the time of birth."
* code = LN#8290-9
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRBirthHeight
Parent:			Observation
Id:				bdr-birthheight
Title:			"Observation - Birth Height (BDR)"
Description:	"The height (body length) of the subject at the time of birth."
* code = LN#8305-5
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRMotherAlcoholUse
Parent:			Observation
Id:				bdr-motheralcoholuse
Title:			"Observation - Mother Alcohol Use (BDR)"
Description:	"Observation regarding the mother's use of alcohol during the pregnancy."
* code = SCT#160573003
* subject only Reference(BDRPatient)
* subject 1..1
* focus only Reference(BDRRelatedPersonMother)
* focus 1..1
* value[x] only string
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRMotherDrugUse
Parent:			Observation
Id:				bdr-motherldruguse
Title:			"Observation - Mother Drug Use (BDR)"
Description:	"Observation regarding maternal recreational drug use during pregnancy."
* code = LN#89495-6
* subject only Reference(BDRPatient)
* subject 1..1
* focus only Reference(BDRRelatedPersonMother)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=07AE5520-13E9-4249-8F3C-23C8E14D6298 (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRMotherExposure
Parent:			Observation
Id:				bdr-motherexposure
Title:			"Observation - Mother Exposure (BDR)"
Description:	"Exposure of the mother to potentially harmful chemical, physical, or biological agents in the environment or to environmental factors that may include ionizing radiation, pathogenic organisms, or toxic chemicals that may cause fetal morbidity."
* code = LN#89496-4
* subject only Reference(BDRPatient)
* subject 1..1
* focus only Reference(BDRRelatedPersonMother)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=39D91E87-2C93-E711-A03D-0017A477041A (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRMotherInsurance
Parent:			Observation
Id:				bdr-motherinsurance
Title:			"Observation - Mother Primary Insurance (BDR)"
Description:	"Primary insurance type for the delivery."
* code = LN#76437-3
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
//* value[x] from TBD (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRMotherTotalPregnancies
Parent:			Observation
Id:				bdr-mothertotalpregnancies
Title:			"Observation - Mother Total Pregnancies (BDR)"
Description:	"The mother's total number of prior pregnancies before the current one."
* code = LN#11996-6
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRMotherLaborOnset
Parent:			Observation
Id:				bdr-motherlaboronset
Title:			"Observation - Mother Labor Onset (BDR)"
Description:	"Serious complications experienced by the mother associated with labor and delivery."
* code = LN#73774-2
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7123 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRMotherPreviousPretermBirths
Parent:			Observation
Id:				bdr-motherpreviouspretermbirths
Title:			"Observation - Mother Previous Preterm Births (BDR)"
Description:	"For the mother, the total number of children whose birth occurred through the end of the last day of the 37th week (259th day) following onset of the last menstrual period in previous pregnancies."
* code = LN#11637-6
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"
