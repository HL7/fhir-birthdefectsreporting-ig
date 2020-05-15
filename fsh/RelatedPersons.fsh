Alias: birthPlaceExt = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: USCoreRace = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias: USCoreEthnicity = http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
Alias: RelationshipVS = http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype


Profile:        BDRRelatedPerson
Parent:         RelatedPerson
Id:             bdr-relatedperson
Title:          "BDR RelatedPerson"
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


Profile:	BDRRelatedPersonMother
Parent:		BDRRelatedPerson
Id:		bdr-relatedpersonmother
Title:		"BDR Mother"
Description:	"The mother of the birth defect report subject. Different individuals may play different roles as the mother (eg. biological mother, adoptive mother, etc)"
* extension contains RelatedPersonDeceased named deceased 0..1 MS
* gender MS
* birthDate MS
* communication MS


Profile:	BDRRelatedPersonFather
Parent:		BDRRelatedPerson
Id:		bdr-relatedpersonfather
Title:		"BDR Father"
Description:	"The father of the birth defect report subject. Different individuals may play different roles as the father (eg. biological father, adoptive father, etc)"
* relationship from FatherRelationship (extensible)



Profile:	BDRRelatedPersonResponsibleParty
Parent:		RelatedPerson
Id:		bdr-relatedpersonresponsibleparty
Title:		"BDR Responsible Party"
Description:	"A individual responsible for the birth defect subject. Mother and father are captured separately."
* relationship 1..* MS 
* name 1..* MS
* telecom MS
* address MS



Extension:	RelatedPersonDeceased
Id:		bdr-relatedpersondeceased
Title:		"Deceased"
Description:	"Deceased indicator for a RelatedPerson. Decease date/time is preferred."
* value[x] only boolean or dateTime 
* value[x] 1..1



Extension:	RelatedPersonBirthPlace
Id:		bdr-relatedpersonbirthplace
Title:		"Birth Place"
Description:	"The registered place of birth of the related person.A sytem may use the address.text if they don't store the birthPlace address in discrete elements."
* value[x] only Address 
* value[x] 1..1
* valueAddress ^short = "The registered place of birth of the related person."



Extension:	RelatedPersonRace
Id:		bdr-relatedpersonrace
Title:		"Race"
Description:	"One more races for the related person."
* value[x] only CodeableConcept 
* value[x] 0..1
* valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/omb-race-category (required)
* valueCodeableConcept ^short = "The race of the related person."


Extension:	RelatedPersonEthnicity
Id:		bdr-relatedpersonethnicity
Title:		"Ethnicity"
Description:	"Ethnicity for the related person."
* value[x] only CodeableConcept 
* value[x] 0..1
* valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity-category (required)
* valueCodeableConcept ^short = "The ethnicity of the related person."


ValueSet:	FatherRelationship
Id:		bdr-fatherRelationship
Title:		"Father Relationship"
Description:	"Relationships describing the father's role relative to the birth defect subject"
* RelationshipVS#ADOPTF "adoptive father"
* RelationshipVS#FTH "father"
* RelationshipVS#FTHFOST "foster father"
* RelationshipVS#NFTH "natural father"
* RelationshipVS#STPFTH "stepfather"