Alias:		LN = http://loinc.org

Profile:	BDRMessageBundle
Parent:		Bundle
Id:		bdr-bundle
Title:		"BDR Report Bundle"
Description:	"The bundle of birth defect report resources."
* identifier 1..1
* type = #message
* timestamp 1..1
* timestamp ^short = "When the report was assembled"
//* entry ^slicing.discriminator.type = #type
//* entry ^slicing.discriminator.path = "resource"
//* entry ^slicing.rules = #open
//* entry ^slicing.ordered = true
//* entry ^slicing.description = "First entry must be MessageHeader"
//* entry contains MessageHeader 1..1
//* entry[MessageHeader].resource 1..1
//* entry[MessageHeader].resource only BDRMessageHeader


Profile:	BDRMessageHeader
Parent:		MessageHeader
Id:		bdr-messageheader
Title:		"BDR Message Header"
Description:	"The message header for the birth defect report."
* event[x] only Coding
* event[x] from EventTypes
* destination 1..1
* sender 1..1
* sender ^definition = "The organization (facility) or provider responsible for reporting the birth defect."
* focus only Reference(BDRReportableDiagnosis)
* focus 1..*



ValueSet:	EventTypes
Id:		bdr-eventtypes
Title:		"Report Event Types"
Description:	"Event types for the birth defect report"
* LN#75609-8 "Outpatient Report"
* LN#85580-9 "Birthing Report"