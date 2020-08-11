Instance:		BDRMessageHeaderExampleStillborn
InstanceOf: 	BDRMessageHeader
Description: 	"Example BDR Stillborn Message Header"
Usage: 			#example
* id = "BDRMessageHeaderExampleStillborn"
* eventCoding = LN#85580-9 "Birth defects Hospital Registry report"
* destination.name = "Michigan BDRS"
* destination.endpoint = "http://acme.com"
* sender = Reference(HospitalSubmittterExample)
* source.name = "EHR"
* source.endpoint = "http://acme.com"
* focus = Reference(ReportableDiagnosisFetusExample)


Instance:		HospitalSubmittterExample
InstanceOf: 	BDROrganization
Description: 	"Example Hospital Submitter Organization"
Usage: 			#example
* id = "HospitalSubmittterExample"
* identifier[0].value = "77878921"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* active = true
* name = "Ann Arbor General Hospital"
* telecom.value = "734-555-2003"
* telecom.system = #phone "Phone"
* address.line = "142 Oak Steet"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"


Instance:		PatientDecedentFetusExample
InstanceOf: 	PatientDecedentFetus
Description: 	"Example BDR Decedent Fetus"
Usage: 			#example
* id = "PatientDecedentFetusExample"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString = "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* identifier.value = "3456"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier.system = "http://www.acme.com/identifiers/patient"
* name.family = "Hallett"
* gender = #male "Male"
* birthDate = "2020-06-14"
* deceasedBoolean = true
* multipleBirthBoolean = false


Instance:		MotherRelatedPersonFetusExample
InstanceOf: 	RelatedPersonMother
Description: 	"Example Mother Related Person for a Decedent Fetus"
Usage: 			#example
* id = "MotherRelatedPersonFetusExample"
* patient = Reference(PatientDecedentFetusExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "Mother"
* name.family = "Hallett"
* name.given = "Ellen"
* telecom.value = "734-555-7708"
* telecom.system = #phone "Phone"
* telecom.use = #mobile "Mobile"
* gender = #female "Female"
* birthDate = "1987-01-12"
* address.line = "12009 Wilson St"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* communication.language = urn:ietf:bcp:47#en "English"


Instance:		ReportableDiagnosisFetusExample
InstanceOf: 	BDRReportableDiagnosis
Description: 	"Example Reportable Diagnosis for Decedent Fetus"
Usage: 			#example
* id = "ReportableDiagnosisFetusExample"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = SCT#254266000 "Partial Trisomy 18 in Edward's syndrome"
* subject = Reference(PatientDecedentFetusExample)
* onsetDateTime = "2020-06-16"


Instance:		InfantLivingFetusExample
InstanceOf: 	ObservationInfantLiving
Description: 	"Example Observation of if the Infant is Living at the Time of Reporting"
Usage: 			#example
* id = "InfantLivingFetusExample"
* status = #final
* code = LN#73757-7 "Infant living at time of report [US Standard Certificate of Live Birth]"
* subject = Reference(PatientDecedentFetusExample)
* valueBoolean = false


Instance:		AutopsyPerformedExample
InstanceOf: 	ObservationAutopsyPerformed
Description: 	"Example Observation on Whether or not an Autopsy was Performed"
Usage: 			#example
* id = "AutopsyPerformedExample"
* status = #final
* code = LN#73768-4 "Autopsy was performed [US Standard Report of Fetal Death]"
* subject = Reference(PatientDecedentFetusExample)
* valueCodeableConcept = SCT#719828003 "Autopsy not done"


Instance:           CauseOfDeathExample
InstanceOf:         ObservationCauseOfDeath
Description:        "Example Observation of the Cause of Death"
Usage:              #example
* id = "CauseOfDeathExample"
* status = #final
* code = LN#79378-6 "Cause of Death"
* subject = Reference(PatientDecedentFetusExample)
* valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#Q91.2 "Trisome 18, translocation"


Instance:           LocationOfDeathExample
InstanceOf:         ObservationLocationOfDeath
Description:        "Example Observation for the Location of Death"
Usage:              #example
* id = "LocationOfDeathExample"
* status = #final
* code = LN#58332-8 "Location of death"
* subject = Reference(PatientDecedentFetusExample)
* valueString = "Hospital"


Instance:		FetusProcedureExample
InstanceOf: 	BDRNewbornProcedure
Description: 	"Example Procedure Performed on the Newborn"
Usage: 			#example
* id = "FetusProcedureExample"
* status = #completed
* code = SCT#312948004 "Karyotype determination"
* subject = Reference(PatientDecedentFetusExample)
* performedDateTime = "2020-06-15"