Extension: ExtensionBDRType
Id: Extension-bdr-type
Title: "BDR Patient type"
Description: "Used to indicate whether the report is for inpatient or outpatient."
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from PatientLocationTypeVS (extensible)
  * ^short = "Value set used to indicate inpatient or outpatient."
  * ^binding.description =  "Type of inpatient or outpatient"