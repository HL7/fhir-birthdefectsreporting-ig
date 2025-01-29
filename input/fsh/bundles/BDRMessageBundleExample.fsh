Instance: BDRMessageBundleExample
InstanceOf: BDRMessageBundle
Description: "Example BDR Message Bundle"
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/birthdefectreporting/StructureDefinition/bdr-bundle"
* id = "BDRMessageBundleExample"
* identifier.value = "12345"
* type = #message
* timestamp = "2020-07-15T13:28:17.239+05:00"
* entry[0].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/BDRMessageHeaderExample"
//* entry[0].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/BDRMessageBundleExample"
//* entry[0].fullUrl = "urn:uuid:04121321-4af5-424c-a0e1-ed3aab1c349a"
* entry[=].resource = BDRMessageHeaderExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Condition/ReportableDiagnosisExample"
//* entry[+].fullUrl = "urn:uuid:04121321-4af5-424c-a0e1-ed3aab1c349b"
* entry[=].resource = ReportableDiagnosisExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Organization/ClinicSubmitterExample"
//* entry[+].fullUrl = "urn:uuid:04121321-4af5-424c-a0e1-ed3aab1c349c"
* entry[=].resource = ClinicSubmitterExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Patient/PatientChildExample"
* entry[=].resource = PatientChildExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/RelatedPerson/MotherRelatedPersonExample"
* entry[=].resource = MotherRelatedPersonExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/RelatedPerson/FatherRelatedPersonExample"
* entry[=].resource = FatherRelatedPersonExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Observation/MotherEducationExample"
* entry[=].resource = MotherEducationExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Observation/FatherEducationExample"
* entry[=].resource = FatherEducationExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Observation/InfantLivingExample"
* entry[=].resource = InfantLivingExample
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Observation/MotherAlcoholUseExample"
* entry[=].resource = MotherAlcoholUseExample
//* entry[+].fullUrl = "http://acme.com/ehr/fhir/Observation/ConfirmatoryTestExample"
* entry[+].fullUrl = "http://acme.com/ehr/fhir/Procedure/ConfirmatoryTestExampleWES"
* entry[=].resource = ConfirmatoryTestExampleWES