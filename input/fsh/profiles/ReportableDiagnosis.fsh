//Alias:			codeList = http://phinvads.cdc.gov/vads/ViewValueSet.action?oid=2.16.840.1.113883.3.88.12.3221.7.4
//Alias:			testList = https://phinvads.cdc.gov/vads/ViewValueSet.action?id=54FCDE19-99B1-E611-95EE-0017A477041A 
Alias:			    BDConfirmTestVS = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.113883.10.14.91 
Alias:			    USCoreProblem = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition
Alias:              codeList = http://hl7.org/fhir/us/core/ValueSet/us-core-condition-code
Alias:              BDConditionDiagnosisCodes = http://phinvads.cdc.gov/fhir/ValueSet/2.16.840.1.113883.13.277

Profile:        BDRReportableDiagnosis
//Parent:         Condition
Parent:         USCoreConditionEncounterDiagnosisProfile
Id:             bdr-reportablediagnosis
Title:          "Condition - Reportable Diagnosis"
Description:    "A description of a reportable birth defect diagnosis for the report subject"
* clinicalStatus 1..1
* verificationStatus 1..1
* subject only Reference(Patient-child-vr)
//* code only CodeableConcept
//* code 1..1
//* code from codeList (preferred)
* code from BDConditionDiagnosisCodes (preferred)
* onset[x] 1..1
* onset[x] only dateTime
* abatement[x] MS
* evidence ^slicing.discriminator.type = #type
* evidence ^slicing.discriminator.path = detail.resolve()
* evidence ^slicing.rules = #open
* evidence ^slicing.ordered = false
* evidence ^slicing.description = "Supporting Data"
* evidence contains ConfirmatoryTest 0..* MS
* evidence[ConfirmatoryTest].detail only Reference(BDRConfirmatoryTest)
* evidence contains SupportingProblems 0..* MS
* evidence[SupportingProblems].detail only Reference(us-core-condition-problems-health-concerns)
* ^jurisdiction.coding = $country#US "United States of America"

Profile:        BDRConfirmatoryTest
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id:             bdr-confirmatorytest
Title:          "Procedure - Diagnosis Confirmatory Test"
Description:    "A procedure used to confirm the reportable birth defect diagnosis for the report subject"
* subject only Reference(Patient-child-vr)
//* code only CodeableConcept
//* code 1..1
//* code from BDConfirmTestVS (required)
* code from BDConfirmTestVS (extensible)
//* code from codeList (extensible)
* ^jurisdiction.coding = $country#US "United States of America"