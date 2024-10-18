Profile:		BDRRelatedPersonResponsibleParty
Parent:			RelatedPerson
Id:				bdr-relatedpersonresponsibleparty
Title:			"RelatedPerson - Responsible Party"
Description:	"An individual responsible for the birth defect subject. Mother and father are captured separately."
* relationship 1..* MS 
* name 1..* MS
* telecom MS
* address MS
* ^jurisdiction.coding = $country#US "United States of America"