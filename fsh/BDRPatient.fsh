Alias: 			birthPlaceExt = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: 			idType = http://terminology.hl7.org/CodeSystem/v2-0203


Profile:        BDRPatient
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id:             bdr-patient
Title:          "Patient (BDR)"
Description:    "A patient for whom clinical data is included in the report. This may be the subject of birth defect report or the subject's mother if data on the pregnancy and delivery is included."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on ID type"
* identifier contains MRN 0..* MS and SSN 0..1 MS
* identifier[MRN].type = idType#MR
* identifier[MRN] ^short = "Medical Record Number"
* identifier[SSN].type = idType#SB
* identifier[SSN] ^short = "SSN if available and appropriate to send"
* name.family 1..1
* birthDate 1..1
* deceased[x] MS
* deceased[x] ^short = "Indicates if the individual is deceased or not, dateTime is preferred"
* multipleBirth[x] MS
* multipleBirth[x] ^short = "Whether patient is part of a multiple birth, integer is preferred"
* extension contains birthPlaceExt named birthPlace 0..1 MS
* extension[birthPlace] ^short = "Place of Birth for the patient should include the state and/or country"
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRPerson
Parent:			Person
Id:				bdr-person
Title:			"Person (BDR)"
Description:	"Person resource used to link the mother's Patient record with the mother's RelatedPerson record. This is important because a Patient should only be created for individual who experienced labor and delivery, but multiple different mother roles may exist."
* link ^slicing.discriminator.type = #pattern
* link ^slicing.discriminator.path = "target"
* link ^slicing.rules = #open
* link ^slicing.ordered = false   // can be omitted, since false is the default
* link ^slicing.description = "Slice based on the link target pattern"
* link contains Patient 1..1 MS and RelatedPerson 1..1 MS
* link[Patient].target only Reference(BDRPatient)
* link[RelatedPerson].target only Reference(BDRRelatedPersonMother)
* ^jurisdiction.coding = COUNTRY#US "United States of America"
