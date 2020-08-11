Instance:		BDRMessageHeaderBirthingExample
InstanceOf: 	BDRMessageHeader
Description: 	"Example BDR Birthing Message Header"
Usage: 			#example
* id = "BDRMessageHeaderBirthingExample"
* eventCoding = LN#85580-9 "Birth defects Hospital Registry report"
* destination.name = "Michigan BDRS"
* destination.endpoint = "http://acme.com"
* sender = Reference(HospitalSubmittterExample)
* source.name = "EHR"
* source.endpoint = "http://acme.com"
* focus = Reference(ReportableDiagnosisBirthingExample)


Instance:		PatientNewbornExample
InstanceOf: 	PatientChild
Description: 	"Example BDR Newborn Patient"
Usage: 			#example
* id = "PatientNewbornExample"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString = "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* identifier[0].value = "6789"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[0].system = "http://www.acme.com/identifiers/patient"
* identifier[1].value = "234567890"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#SB
* identifier[1].system = "http://hl7.org/fhir/sid/us-ssn"
* name.family = "Boucher"
* name.given[0] = "Melanie"
* name.given[1] = "Aurora"
* gender = #female "Female"
* birthDate = "2020-08-08"
* deceasedBoolean = false
* multipleBirthBoolean = false
* address.line = "45 Clearview Ave"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"


Instance:		MotherRelatedPersonBirthingExample
InstanceOf: 	RelatedPersonMother
Description: 	"Example Mother Related Person"
Usage: 			#example
* id = "MotherRelatedPersonBirthingExample"
* patient = Reference(PatientNewbornExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "Mother"
* name.family = "Boucher"
* name.given[0] = "Miranda"
* name.given[1] = "Stephanie"
* telecom.value = "734-555-9800"
* telecom.system = #phone "Phone"
* telecom.use = #mobile "Mobile"
* gender = #female "Female"
* birthDate = "1988-02-17"
* address.line = "45 Clearview Ave"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* communication.language = urn:ietf:bcp:47#en "English"


Instance:		FatherRelatedPersonBirthingExample
InstanceOf: 	RelatedPersonFather
Description: 	"Example Father Related Person"
Usage: 			#example
* id = "FatherRelatedPersonBirthingExample"
* patient = Reference(PatientNewbornExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "Father"
* name.family = "Boucher"
* name.given = "Gordon"
* telecom.value = "734-555-1209"
* telecom.system = #phone "Phone"
* telecom.use = #mobile "Mobile"
* gender = #male "Male"
* birthDate = "1987-09-07"
* address.line = "45 Clearview Ave"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* communication.language = urn:ietf:bcp:47#en "English"


Instance:		ResponsiblePartyExample
InstanceOf: 	BDRRelatedPersonResponsibleParty
Description: 	"Example Responsible Party"
Usage: 			#example
* id = "ResponsiblePartyExample"
* patient = Reference(PatientNewbornExample)
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


Instance:		ReportableDiagnosisBirthingExample
InstanceOf: 	BDRReportableDiagnosis
Description: 	"Example Birthing Reportable Diagnosis"
Usage: 			#example
* id = "ReportableDiagnosisBirthingExample"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* code = SCT#367506006 "Polydactyly (disorder)"
* bodySite = SCT#56459004 "Foot"
* subject = Reference(PatientNewbornExample)
* onsetDateTime = "2020-08-08"


Instance:		MotherEducationBirthingExample
InstanceOf: 	ObservationParentEducationLevel
Description: 	"Example Observation of the Mother's Education"
Usage: 			#example
* id = "MotherEducationBirthingExample"
* status = #final
* code = LN#57712-2 "Highest level of education Mother"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#BD


Instance:		FatherEducationBirthingExample
InstanceOf: 	ObservationParentEducationLevel
Description: 	"Example Observation of the Father's Education"
Usage: 			#example
* id = "FatherEducationBirthingExample"
* status = #final
* code = LN#87300-0 "Highest level of education Father"
* subject = Reference(PatientNewbornExample)
* focus = Reference(FatherRelatedPersonBirthingExample)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#SCOL


Instance:		InfantLivingBirthingExample
InstanceOf: 	ObservationInfantLiving
Description: 	"Example Observation of if the Infant is Living at the Time of Reporting"
Usage: 			#example
* id = "InfantLivingBirthingExample"
* status = #final
* code = LN#73757-7 "Infant living at time of report [US Standard Certificate of Live Birth]"
* subject = Reference(PatientNewbornExample)
* valueBoolean = true


Instance:		MotherAlcoholUseBirthingExample
InstanceOf: 	ObservationMotherAlcoholUse
Description: 	"Example Observation of the Mother's Alcohol Use During Pregnancy"
Usage: 			#example
* id = "MotherAlcoholUseBirthingExample"
* status = #final
* code = SCT#160573003 "Alcohol Intake"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueString = "No alcohol use during pregnancy"


Instance:		MotherExposureBirthingExample
InstanceOf: 	ObservationMotherExposure
Description: 	"Example Observation of the Mother's Exposures During Pregnancy"
Usage: 			#example
* id = "MotherExposureBirthingExample"
* status = #final
* code = LN#89496-4 "Maternal Known exposure --during pregnancy"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = SCT#242383002 "Accidental exposure to carbon monoxide"


Instance:		MotherRiskFactorBirthingExample
InstanceOf: 	ObservationPregnancyRiskFactor
Description: 	"Example Observation of the Mother's Risk Factor During Pregnancy"
Usage: 			#example
* id = "MotherRiskFactorBirthingExample"
* status = #final
* code = LN#73775-9 "Mothers Risk factors in this pregnancy [US Standard Certificate of Live Birth]"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = SCT#161765003 "History of preterm delivery"


Instance:		MotherDrugUseBirthingExample
InstanceOf: 	ObservationMotherDrugUse
Description: 	"Example Observation of the Mother's Drug Use During Pregnancy"
Usage: 			#example
* id = "MotherDrugUseBirthingExample"
* status = #final
* code = LN#89495-6 "Drug use by Mother --during pregnancy"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = http://fdasis.nlm.nih.gov#QVU94XE61A "3-METHYLFENTANYL"
