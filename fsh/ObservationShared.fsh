//Observations shared with Birth and Fetal Death
Alias:		LN = http://loinc.org

Profile:	ParentEducationLevel
Parent:		Observation
Id:		parenteducationlevel
Title:		"Parent Education Level"
Description:	"Education Level of the birth defect report subject's parent."
* code from EducationLevelPerson (required)
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://terminology.hl7.org/ValueSet/v3-EducationLevel (required)


Profile:	ApgarScore
Parent:		Observation
Id:		apgarscore
Title:		"APGAR Score"
Description:	"APGAR score post-birth."
* code from ApgarTiming (extensible)
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer
* value[x] 1..1


Profile:	PlaceOfBirth
Parent:		Observation
Id:		placeofbirth
Title:		"Place Of Birth"
Description:	"Indicates the type of place or situation where birth or delivery occurred"
* code = LN#73766-8 
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=544E9C61-9D2B-4EAE-8DEE-7A76A4D18DE0 (required)


Profile:	AutopsyPerformed
Parent:		Observation
Id:		autopsyperformed
Title:		"Autopsy Performed"
Description:	"Indication if an autopsy has been performed on the subject."
* code = LN#73768-4
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7137 (required)


Profile:	InfantLiving
Parent:		Observation
Id:		infantliving
Title:		"Infant Living"
Description:	"Indication of whether the infant is living at the time the report is being submitted."
* code = LN#73757-7
* subject only Reference(BDRPatient)
* subject 1..1
//could change to a YNU coded value set
* value[x] only boolean
* value[x] 1..1


Profile:	BirthWeight
Parent:		Observation
Id:		birthweight
Title:		"Birth Weight "
Description:	"The weight of the subject at the time of birth."
* code = LN#8339-4
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1


Profile:	GestationalAge
Parent:		Observation
Id:		gestationalage
Title:		"Gestational Age"
Description:	"The delivery attendant's final estimate of gestation based on all perinatal factors and assessments"
* code = LN#11884-4
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* method MS


Profile:	MotherHeight
Parent:		Observation
Id:		motherheight
Title:		"Mother's Height "
Description:	"The height of the mother."
//could also use LOINC 83846-6
* code = LN#3137-7
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1


Profile:	MotherDeliveryWeight
Parent:		Observation
Id:		motherdeliveryweight
Title:		"Mother's Delivery Weight "
Description:	"The weight of the mother at the time of birth."
* code = LN#69461-2
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1


Profile:	MotherPrePregnancyWeight
Parent:		Observation
Id:		motherprepgrenancyweight
Title:		"Mother's Pre-Pregnancy Weight "
Description:	"The weight of the mother before becoming pregnant."
* code = LN#56077-1
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1


Profile:	MotherRiskFactor
Parent:		Observation
Id:		motherriskfactor
Title:		"Mother's Risk Factor"
Description:	"Information on a risk factors for the mother during pregnancy"
* code = LN#73775-9
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7126 (extensible)


Profile:	MotherLMP
Parent:		Observation
Id:		motherlmp
Title:		"Mother's Last Menstrual Period"
Description:	"This profile represents the date of the last menstrual period of the patient. If known, the first day of last menstrual period should be captured."
* code = LN#8665-2
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only dateTime
* value[x] ^short = "Start of last menstrual period"


Profile:	MotherBirthsNowDead
Parent:		Observation
Id:		motherbirthsnowdead
Title:		"Number of Mother's Births Now Dead"
Description:	"The total number of previous live-born infants for the mother now dead."
* code = LN#68496-9
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer


Profile:	MotherBirthsNowLiving
Parent:		Observation
Id:		motherbirthsnowliving
Title:		"Number of Mother's Births Now Living"
Description:	"The total number of previous live-born infants for the mother now living."
* code = LN#11638-4
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer


Profile:	MotherOtherOutcomes
Parent:		Observation
Id:		motherotheroutcomes
Title:		"Number of Mother's Other Outcomes"
Description:	"The total number of other pregnancy outcomes for the mother that did not result in a live birth."
* code = LN#69043-8
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer


Profile:	MotherPrenatalVisits
Parent:		Observation
Id:		motherprenatalvisits
Title:		"Number of Mother's Prenatal Visits"
Description:	"The total number of prenatal visits for the mother. The dates of the first and last prenatal visit are indicated by the effective date range. If the mother received no prenatal care, the value should indicate 0 visits."
* code = LN#68493-6
* subject only Reference(BDRPatient)
* subject 1..1
* effective[x] only Period
* value[x] only integer


Profile:	MotherCesareans
Parent:		Observation
Id:		mothercesareans
Title:		"Number of Mother's Previous Cesareans"
Description:	"The total number of previous cesarean deliveries for the mother."
* code = LN#68497-7
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer


Profile:	MotherPlurality
Parent:		Observation
Id:		motherplurality
Title:		"Plurality"
Description:	"The number of fetuses delivered live or dead at any time in the pregnancy regardless of gestational age, or if the fetuses were delivered at different dates in the pregnancy. Include all live births and fetal losses resulting from this pregnancy."
* code = LN#57722-1 
* subject only Reference(BDRPatient)
* subject 1..1
* value[x] only integer


ValueSet:	EducationLevelPerson
Id:		educationlevelperson
Title:		"Person Education Level"
Description:	"A set of persons for whom education level can be reported."
* LN#87300-0 "Highest level of education Father"
* LN#57712-2 "Highest level of education Mother"



ValueSet:	ApgarTiming
Id:		apgartiming
Title:		"APGAR Score Timing"
Description:	"Standard timings for APGAR assessments."
* LN#9274-2 "5 minute Apgar Score"
* LN#9271-8 "10 minute Apgar Score"
