Profile:        BDROrganization
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Id:             bdr-organization
Title:          "Submitting Organization (BDR)"
Description:    "The healthcare Organization responsible for submitting the birth defect report"
* identifier 1..1
* telecom 1..1
* address 1..1
* ^jurisdiction.coding = COUNTRY#US "United States of America"
