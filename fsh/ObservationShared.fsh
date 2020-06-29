//Observations shared with Birth and Fetal Death Reporting
Alias:			LN = http://loinc.org
Alias:			COUNTRY = urn:iso:std:iso:3166

Profile:		ParentEducationLevel
Parent:			Observation
Id:				parenteducationlevel
Title:			"Observation - Parent Education Level"
Description:	"The education Level of the birth defect report subject's parent."
* code from EducationLevelPerson (required)
* subject only Reference(BDRPatientSubject)
* subject 1..1
* subject ^short = "This is the subject of the report, not the parent"
* focus only Reference(BDRRelatedPersonMother | BDRRelatedPersonFather)
* focus 1..1
* focus ^short = "The RelatedPerson record for the parent"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from http://terminology.hl7.org/ValueSet/v3-EducationLevel (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		ApgarScore
Parent:			Observation
Id:				apgarscore
Title:			"Observation - APGAR Score"
Description:	"APGAR score post-birth."
* code from ApgarTiming (extensible)
* subject only Reference(BDRPatientSubject)
* subject 1..1
* value[x] only integer
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		PlaceOfBirth
Parent:			Observation
Id:				placeofbirth
Title:			"Observation - Place Of Birth"
Description:	"An indication of the type of place or situation where birth or delivery occurred"
* code = LN#73766-8 
* subject only Reference(BDRPatientSubject)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?id=544E9C61-9D2B-4EAE-8DEE-7A76A4D18DE0 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		AutopsyPerformed
Parent:			Observation
Id:				autopsyperformed
Title:			"Observation - Autopsy Performed"
Description:	"An indication if an autopsy has been performed on the subject."
* code = LN#73768-4
* subject only Reference(BDRPatientSubject)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7137 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		InfantLiving
Parent:			Observation
Id:				infantliving
Title:			"Observation - Infant Living"
Description:	"An indication of whether the infant is living at the time the report is being submitted."
* code = LN#73757-7
* subject only Reference(BDRPatientSubject)
* subject 1..1
//could change to a YNU coded value set
* value[x] only boolean
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BirthWeight
Parent:			Observation
Id:				birthweight
Title:			"Observation - Birth Weight"
Description:	"The weight of the subject at the time of birth."
* code = LN#8339-4
* subject only Reference(BDRPatientSubject)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		GestationalAge
Parent:			Observation
Id:				gestationalage
Title:			"Observation - Gestational Age"
Description:	"The delivery attendant's final estimate of gestation based on all perinatal factors and assessments"
* code = LN#11884-4
* subject only Reference(BDRPatientSubject)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* method MS
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherHeight
Parent:			Observation
Id:				motherheight
Title:			"Observation - Mother Height"
Description:	"The height of the mother."
//could also use LOINC 83846-6
* code = LN#3137-7
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherDeliveryWeight
Parent:			Observation
Id:				motherdeliveryweight
Title:			"Observation - Mother Delivery Weight"
Description:	"The weight of the mother at the time of birth."
* code = LN#69461-2
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherPrePregnancyWeight
Parent:			Observation
Id:				motherprepgrenancyweight
Title:			"Observation - Mother Pre-Pregnancy Weight"
Description:	"The weight of the mother before becoming pregnant."
* code = LN#56077-1
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only Quantity
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherRiskFactor
Parent:			Observation
Id:				motherriskfactor
Title:			"Observation - Mother Risk Factor"
Description:	"Information on a risk factors for the mother during pregnancy"
* code = LN#73775-9
* subject only Reference(BDRPatientSubject)
* subject 1..1
* focus only Reference(BDRRelatedPersonMother)
* focus 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7126 (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherLMP
Parent:			Observation
Id:				motherlmp
Title:			"Observation - Mother Last Menstrual Period"
Description:	"The last menstrual period of the patient. If known, the first day of last menstrual period should be captured."
* code = LN#8665-2
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only dateTime
* value[x] ^short = "Start of last menstrual period"
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherBirthsNowDead
Parent:			Observation
Id:				motherbirthsnowdead
Title:			"Observation - Number of Mother Births Now Dead"
Description:	"The total number of previous live-born infants for the mother now dead."
* code = LN#68496-9
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherBirthsNowLiving
Parent:			Observation
Id:				motherbirthsnowliving
Title:			"Observation - Number of Mother Births Now Living"
Description:	"The total number of previous live-born infants for the mother now living."
* code = LN#11638-4
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherOtherOutcomes
Parent:			Observation
Id:				motherotheroutcomes
Title:			"Observation - Number of Mother Other Outcomes"
Description:	"The total number of other pregnancy outcomes for the mother that did not result in a live birth."
* code = LN#69043-8
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherPrenatalVisits
Parent:			Observation
Id:				motherprenatalvisits
Title:			"Observation - Prenatal Care"
Description:	"The total number of prenatal visits for the mother. The dates of the first and last prenatal visit are indicated by the effective date range. If the mother received no prenatal care, the value should indicate 0 visits."
* code = LN#68493-6
* subject only Reference(BDRPatientMother)
* subject 1..1
* effective[x] only Period
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherCesareans
Parent:			Observation
Id:				mothercesareans
Title:			"Observation - Prior Cesareans"
Description:	"The total number of prior cesarean deliveries for the mother."
* code = LN#68497-7
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherPlurality
Parent:			Observation
Id:				motherplurality
Title:			"Observation - Plurality"
Description:	"The number of fetuses delivered live or dead at any time in the pregnancy regardless of gestational age, or if the fetuses were delivered at different dates in the pregnancy. Include all live births and fetal losses resulting from this pregnancy."
* code = LN#57722-1 
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRMotherLaborOnset
Parent:			Observation
Id:				bdr-motherlaboronset
Title:			"Observation - Mother Labor Onset"
Description:	"Serious complications experienced by the mother associated with labor and delivery."
* code = LN#73774-2
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from https://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.114222.4.11.7123 (required)
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherLiveBirths
Parent:			Observation
Id:				motherlivebirths
Title:			"Observation - Live Births This Delivery"
Description:	"The number of live births in this delivery."
* code = LN#73773-4 
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		MotherFetalDeaths
Parent:			Observation
Id:				motherfetaldeaths
Title:			"Observation - Fetal Deaths This Delivery"
Description:	"The number of fetal deaths in this delivery."
* code = LN#73773-4 
* subject only Reference(BDRPatientMother)
* subject 1..1
* value[x] only integer
* ^jurisdiction.coding = COUNTRY#US "United States of America"


ValueSet:		EducationLevelPerson
Id:				educationlevelperson
Title:			"Person Education Level"
Description:	"Persons for whom education level can be reported."
* LN#87300-0 "Highest level of education Father"
* LN#57712-2 "Highest level of education Mother"
* ^jurisdiction.coding = COUNTRY#US "United States of America"



ValueSet:		ApgarTiming
Id:				apgartiming
Title:			"APGAR Score Timing"
Description:	"Standard timings for APGAR assessments."
* LN#9272-6 "1 minute Apgar Score"
* LN#9274-2 "5 minute Apgar Score"
* LN#9271-8 "10 minute Apgar Score"
* ^jurisdiction.coding = COUNTRY#US "United States of America"
