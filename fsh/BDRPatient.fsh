Alias: birthPlaceExt = http://hl7.org/fhir/StructureDefinition/patient-birthPlace


Profile:        BDRPatient
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id:             bdr-patient
Title:          "BDR Patient"
Description:    "A patient for whom clinical data is included in the report. This may be the subject of birth defect report or the subject's mother if data on the pregnancy and delivery is included."
* birthDate 1..1
* deceased[x] MS
* multipleBirth[x] MS
* extension contains birthPlaceExt named birthPlace 0..1 MS



Profile:	BDRPerson
Parent:		Person
Id:		bdr-person
Title:		"BDR Person"
Description:	"Person resource used to link the mother's Patient record with the mother's RelatedPerson record. This is important because a Patient should only be created for individual who experienced labor and delivery, but multiple different mother roles may exist."
* link ^slicing.discriminator.type = #pattern
* link ^slicing.discriminator.path = "target"
* link ^slicing.rules = #open
* link ^slicing.ordered = false   // can be omitted, since false is the default
* link ^slicing.description = "Slice based on the link target pattern"
* link contains Patient 1..1 MS and RelatedPerson 1..1 MS
* link[Patient].target only Reference(BDRPatient)
* link[RelatedPerson].target only Reference(BDRRelatedPersonMother)