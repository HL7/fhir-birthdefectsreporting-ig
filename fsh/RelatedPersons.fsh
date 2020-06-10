Alias: birthPlaceExt = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: USCoreRace = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias: USCoreEthnicity = http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
Alias: RelationshipVS = http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype


Profile:        BDRRelatedPerson
Parent:         RelatedPerson
Id:             bdr-relatedperson
Title:          "Related Person (BDR)"
Description:    "The RelatedPerson profile contains constraints common to the Mother and Father profiles."
* identifier MS
* patient only Reference(BDRPatient)
* relationship 1..* MS
* name 1..* MS
* birthDate MS
* telecom MS
* address MS
* extension contains RelatedPersonBirthPlace named birthPlace 0..1 MS
* extension contains RelatedPersonRace named race 0..* MS
* extension contains RelatedPersonEthnicity named ethnicity 0..1 MS
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRRelatedPersonMother
Parent:			BDRRelatedPerson
Id:				bdr-relatedpersonmother
Title:			"Mother (BDR)"
Description:	"The mother of the birth defect report subject. Different individuals may play different roles as the mother (eg. biological mother, adoptive mother, etc)"
* extension contains RelatedPersonDeceased named deceased 0..1 MS
* gender MS
* birthDate MS
* communication MS
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Profile:		BDRRelatedPersonFather
Parent:			BDRRelatedPerson
Id:				bdr-relatedpersonfather
Title:			"Father (BDR)"
Description:	"The father of the birth defect report subject. Different individuals may play different roles as the father (eg. biological father, adoptive father, etc)"
* relationship from FatherRelationship (extensible)
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Profile:		BDRRelatedPersonResponsibleParty
Parent:			RelatedPerson
Id:				bdr-relatedpersonresponsibleparty
Title:			"Responsible Party (BDR)"
Description:	"A individual responsible for the birth defect subject. Mother and father are captured separately."
* relationship 1..* MS 
* name 1..* MS
* telecom MS
* address MS
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Extension:		RelatedPersonDeceased
Id:				bdr-relatedpersondeceased
Title:			"Deceased (BDR)"
Description:	"Deceased indicator for a RelatedPerson. Decease date/time is preferred."
* value[x] only boolean or dateTime 
* value[x] 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Extension:		RelatedPersonBirthPlace
Id:				bdr-relatedpersonbirthplace
Title:			"Birth Place (BDR)"
Description:	"The registered place of birth of the related person.A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
* value[x] only Address 
* value[x] 1..1
* valueAddress ^short = "The registered place of birth of the related person."
* ^jurisdiction.coding = COUNTRY#US "United States of America"



Extension:		RelatedPersonRace
Id:				bdr-relatedpersonrace
Title:			"Race (BDR)"
Description:	"One more races for the related person."
* value[x] only CodeableConcept 
* value[x] 0..1
* valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/omb-race-category (required)
* valueCodeableConcept ^short = "The race of the related person."
* ^jurisdiction.coding = COUNTRY#US "United States of America"


Extension:		RelatedPersonEthnicity
Id:				bdr-relatedpersonethnicity
Title:			"Ethnicity (BDR)"
Description:	"Ethnicity for the related person."
* value[x] only CodeableConcept 
* value[x] 0..1
* valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity-category (required)
* valueCodeableConcept ^short = "The ethnicity of the related person."
* ^jurisdiction.coding = COUNTRY#US "United States of America"


ValueSet:		FatherRelationship
Id:				bdr-fatherRelationship
Title:			"Father Relationship"
Description:	"Relationships describing the father's role relative to the birth defect subject"
* RelationshipVS#ADOPTF "adoptive father"
* RelationshipVS#FTH "father"
* RelationshipVS#FTHFOST "foster father"
* RelationshipVS#NFTH "natural father"
* RelationshipVS#STPFTH "stepfather"
* ^jurisdiction.coding = COUNTRY#US "United States of America"