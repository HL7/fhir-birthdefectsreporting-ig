Profile:		BDRMessageBundle
Parent:			Bundle
Id:				bdr-bundle
Title:			"Bundle - Birth Defect Report"
Description:	"The bundle of birth defect report resources."
* identifier 1..1
* type = #message
* timestamp 1..1
* timestamp ^short = "When the report was assembled"
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = true
* entry ^slicing.description = "First entry must be MessageHeader"
* entry contains MessageHeader 1..1
* entry[MessageHeader].resource 1..1
* entry[MessageHeader].resource only BDRMessageHeader
* ^jurisdiction.coding = $country#US "United States of America"


Profile:		BDRMessageHeader
Parent:			MessageHeader
Id:				bdr-messageheader
Title:			"MessageHeader - Birth Defect"
Description:	"The message header for the birth defect report."
* event[x] only Coding
* event[x] from EventTypes
* destination 1..1
* sender 1..1
* sender ^definition = "The organization (facility) or provider responsible for reporting the birth defect."
* focus only Reference(BDRReportableDiagnosis)
* focus 1..*
* ^jurisdiction.coding = $country#US "United States of America"



ValueSet:		EventTypes
Id:				bdr-eventtypes
Title:			"Birth Defect Report Event Types"
Description:	"Event types for the birth defect report"
* ^experimental = false
* ^status = #active
//* insert LOINCSNOMEDCopyright
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#75609-8 "Outpatient Report"
* $loinc#85580-9 "Birthing Report"
* ^jurisdiction.coding = $country#US "United States of America"