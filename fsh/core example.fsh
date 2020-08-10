Instance:		BDRMessageHeaderExample
InstanceOf: 	BDRMessageHeader
Description: 	"Example BDR Message Header"
Usage: 			#example
* id = "BDRMessageHeaderExample"
* eventCoding = LN#75609-8 "Birth defects Outpatient Registry report"
* destination.name = "Michigan BDRS"
* destination.endpoint = "http://acme.com"
* sender = Reference(BDRSubmittterExample)
* source.name = "EHR"
* source.endpoint = "http://acme.com"
* focus = Reference(ReportableDiagnosisExample)


Instance:		BDRSubmittterExample
InstanceOf: 	BDROrganization
Description: 	"Example BDR Submitter Organization"
Usage: 			#example
* id = "BDRSubmittterExample"
* identifier[0].value = "8893223"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#PRN
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* active = true
* name = "Westside Hospital"
* telecom.value = "734-555-0001"
* telecom.system = #phone "Phone"
* address.line = "67 Main Steet"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"


Instance:		PatientChildExample
InstanceOf: 	PatientChild
Description: 	"Example BDR Patient"
Usage: 			#example
* id = "PatientChildExample"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString = "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* identifier[0].value = "1234"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[0].system = "http://www.acme.com/identifiers/patient"
* identifier[1].value = "123456789"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#SB
* identifier[1].system = "http://hl7.org/fhir/sid/us-ssn"
* name.family = "Wellington"
* name.given[0] = "Gene"
* name.given[1] = "Austin"
* gender = #male "Male"
* birthDate = "2020-04-28"
* deceasedBoolean = false
* multipleBirthBoolean = false
* address.line = "425 East 66th St"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"


Instance:		MotherRelatedPersonExample
InstanceOf: 	RelatedPersonMother
Description: 	"Example Mother Related Person"
Usage: 			#example
* id = "MotherRelatedPersonExample"
* patient = Reference(PatientChildExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "Mother"
* name.family = "Wellington"
* name.given = "Sara"
* telecom.value = "734-555-6291"
* telecom.system = #phone "Phone"
* telecom.use = #mobile "Mobile"
* gender = #female "Female"
* birthDate = "1991-10-19"
* address.line = "425 East 66th St"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* communication.language = urn:ietf:bcp:47#en "English"


Instance:		FatherRelatedPersonExample
InstanceOf: 	RelatedPersonFather
Description: 	"Example Father Related Person"
Usage: 			#example
* id = "FatherRelatedPersonExample"
* patient = Reference(PatientChildExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "Father"
* name.family = "Wellington"
* name.given = "Adam"
* telecom.value = "734-555-9087"
* telecom.system = #phone "Phone"
* telecom.use = #mobile "Mobile"
* gender = #female "Female"
* birthDate = "1992-03-17"
* address.line = "425 East 66th St"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* communication.language = urn:ietf:bcp:47#en "English"


Instance:		ResponsiblePartyExample
InstanceOf: 	BDRRelatedPersonResponsibleParty
Description: 	"Example Responsible Party"
Usage: 			#example
* id = "ResponsiblePartyExample"
* patient = Reference(PatientChildExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GRMTH "Grandmother"
* name.family = "Moore"
* name.given = "Helen"
* telecom.value = "734-555-7810"
* telecom.system = #phone "Phone"
* telecom.use = #mobile "Mobile"
* gender = #female "Female"
* birthDate = "1958-09-01"
* address.line = "1889 West Elm St"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* communication.language = urn:ietf:bcp:47#en "English"


Instance:		NewbornProcedureExample
InstanceOf: 	BDRNewbornProcedure
Description: 	"Example Procedure Performed on the Newborn"
Usage: 			#example
* id = "NewbornProcedureExample"
* status = #completed
* code = SCT#312948004 "Karyotype determination"
* subject = Reference(PatientChildExample)
* performedDateTime = "2020-07-07"


Instance:		ConfirmatoryTestExample
InstanceOf: 	BDRConfirmatoryTest
Description: 	"Example Confirmatory Test for Reportable Diagnosis"
Usage: 			#example
* id = "ConfirmatoryTestExample"
* status = #completed
* code = http://www.ama-assn.org/go/cpt#81415 "Whole exome sequencing"
* subject = Reference(PatientChildExample)
* performedDateTime = "2020-07-14"


Instance:		ReportableDiagnosisExample
InstanceOf: 	BDRReportableDiagnosis
Description: 	"Example Reportable Diagnosis"
Usage: 			#example
* id = "ReportableDiagnosisExample"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = SCT#719046005 "12q14 microdeletion syndrome (disorder)"
* subject = Reference(PatientChildExample)
* onsetDateTime = "2020-07-15"
* evidence.detail = Reference(ConfirmatoryTestExample)


Instance:		MotherEducationExample
InstanceOf: 	ObservationParentEducationLevel
Description: 	"Example Observation of the Mother's Education"
Usage: 			#example
* id = "MotherEducationExample"
* status = #final
* code = LN#57712-2 "Highest level of education Mother"
* subject = Reference(PatientChildExample)
* focus = Reference(MotherRelatedPersonExample)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#BD


Instance:		FatherEducationExample
InstanceOf: 	ObservationParentEducationLevel
Description: 	"Example Observation of the Father's Education"
Usage: 			#example
* id = "FatherEducationExample"
* status = #final
* code = LN#87300-0 "Highest level of education Father"
* subject = Reference(PatientChildExample)
* focus = Reference(FatherRelatedPersonExample)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#SCOL


Instance:		InfantLivingExample
InstanceOf: 	ObservationInfantLiving
Description: 	"Example Observation of if the Infant is Living at the Time of Reporting"
Usage: 			#example
* id = "InfantLivingExample"
* status = #final
* code = LN#73757-7 "Infant living at time of report [US Standard Certificate of Live Birth]"
* subject = Reference(PatientChildExample)
* valueBoolean = true


Instance:		MotherAlcoholUseExample
InstanceOf: 	ObservationMotherAlcoholUse
Description: 	"Example Observation of the Mother's Alcohol Use During Pregnancy"
Usage: 			#example
* id = "MotherAlcoholUseExample"
* status = #final
* code = SCT#160573003 "Alcohol Intake"
* subject = Reference(PatientChildExample)
* focus = Reference(MotherRelatedPersonExample)
* valueString = "No alcohol use during pregnancy"


Instance:		MotherExposureExample
InstanceOf: 	ObservationMotherExposure
Description: 	"Example Observation of the Mother's Exposures During Pregnancy"
Usage: 			#example
* id = "MotherExposureExample"
* status = #final
* code = LN#89496-4 "Maternal Known exposure --during pregnancy"
* subject = Reference(PatientChildExample)
* focus = Reference(MotherRelatedPersonExample)
* valueCodeableConcept = SCT#242383002 "Accidental exposure to carbon monoxide"


Instance:		MotherRiskFactorExample
InstanceOf: 	ObservationPregnancyRiskFactor
Description: 	"Example Observation of the Mother's Risk Factor During Pregnancy"
Usage: 			#example
* id = "MotherRiskFactorExample"
* status = #final
* code = LN#73775-9 "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject = Reference(PatientChildExample)
* focus = Reference(MotherRelatedPersonExample)
* valueCodeableConcept = SCT#161765003 "History of preterm delivery"


Instance:		MotherDrugUseExample
InstanceOf: 	ObservationMotherDrugUse
Description: 	"Example Observation of the Mother's Drug Use During Pregnancy"
Usage: 			#example
* id = "MotherDrugUseExample"
* status = #final
* code = LN#89495-6 "Drug use by Mother --during pregnancy"
* subject = Reference(PatientChildExample)
* focus = Reference(MotherRelatedPersonExample)
* valueCodeableConcept = http://fdasis.nlm.nih.gov#QVU94XE61A "3-METHYLFENTANYL"
