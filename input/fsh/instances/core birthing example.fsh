Instance:		BDRMessageHeaderBirthingExample
InstanceOf: 	BDRMessageHeader
Description: 	"Example BDR Birthing Message Header"
Usage: 			#example
* id = "BDRMessageHeaderBirthingExample"
* eventCoding = $loinc#85580-9 "Birth defects Hospital Registry report"
* destination.name = "Michigan BDRS"
* destination.endpoint = "http://acme.com"
* sender = Reference(HospitalSubmittterExample)
* source.name = "EHR"
* source.endpoint = "http://acme.com"
* focus = Reference(ReportableDiagnosisBirthingExample)

Instance:		HospitalSubmittterExample
InstanceOf: 	BDROrganization
Description: 	"Example Hospital Submitter Organization"
Usage: 			#example
* id = "HospitalSubmittterExample"
* identifier[0].value = "1993999998"
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

Instance:		PatientNewbornExample
InstanceOf: 	PatientChildVitalRecords
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
* name.use = #official "Official"
* extension[birthsex]
  * valueCode = #F
* gender = #female "Female"
* birthDate = "2020-08-08"
* multipleBirthInteger = 1
* deceasedBoolean = false
//* multipleBirthBoolean = false
* address.line = "45 Clearview Ave"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"


Instance:		MotherRelatedPersonBirthingExample
InstanceOf: 	RelatedPersonMotherVitalRecords
Description: 	"Example Mother Related Person"
Usage: 			#example
* id = "MotherRelatedPersonBirthingExample"
* patient = Reference(PatientNewbornExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "Mother"
* active = true
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
InstanceOf: 	RelatedPersonFatherNaturalVitalRecords
Description: 	"Example Father Related Person"
Usage: 			#example
* id = "FatherRelatedPersonBirthingExample"
* patient = Reference(PatientNewbornExample)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#NFTH "natural father"
//* relationship = $v3-RoleCode#NFTH "natural father"
* active = true
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
* code = $sct#367506006 "Polydactyly (disorder)"
* bodySite = $sct#56459004 "Foot"
* subject = Reference(PatientNewbornExample)
* onsetDateTime = "2020-08-08"


Instance:		MotherEducationBirthingExample
InstanceOf: 	ObservationEducationLevelVitalRecords
Description: 	"Example Observation of the Mother's Education"
Usage: 			#example
* id = "MotherEducationBirthingExample"
* status = #final
* code = $loinc#57712-2 "Highest level of education Mother"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* effectiveDateTime = "2019-12-02"
* performer = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#SCOL


Instance:		FatherEducationBirthingExample
InstanceOf: 	ObservationEducationLevelVitalRecords
Description: 	"Example Observation of the Father's Education"
Usage: 			#example
* id = "FatherEducationBirthingExample"
* status = #final
* code = $loinc#87300-0 "Highest level of education Father"
* subject = Reference(PatientNewbornExample)
* focus = Reference(FatherRelatedPersonBirthingExample)
* effectiveDateTime = "2019-12-02"
* performer = Reference(FatherRelatedPersonBirthingExample)
* valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#SCOL


Instance:		InfantLivingBirthingExample
InstanceOf: 	ObservationInfantLiving
Description: 	"Example Observation of if the Infant is Living at the Time of Reporting"
Usage: 			#example
* id = "InfantLivingBirthingExample"
* status = #final
* code = $loinc#73757-7 "Infant living at time of report [US Standard Certificate of Live Birth]"
* subject = Reference(PatientNewbornExample)
* valueBoolean = true
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:		MotherAlcoholUseBirthingExample
InstanceOf: 	ObservationMotherAlcoholUse
Description: 	"Example Observation of the Mother's Alcohol Use During Pregnancy"
Usage: 			#example
* id = "MotherAlcoholUseBirthingExample"
* status = #final
* code = $sct#160573003 "Alcohol Intake"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueString = "No alcohol use during pregnancy"
* performer = Reference(MotherRelatedPersonBirthingExample)
* effectiveDateTime = "2019-12-02"

Instance:		MotherExposureBirthingExample
InstanceOf: 	ObservationMotherExposure
Description: 	"Example Observation of the Mother's Exposures During Pregnancy"
Usage: 			#example
* id = "MotherExposureBirthingExample"
* status = #final
* code = $loinc#89496-4 "Maternal Known exposure --during pregnancy"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = $sct#242383002 "Accidental exposure to carbon monoxide"
* performer = Reference(MotherRelatedPersonBirthingExample)
* effectiveDateTime = "2019-12-02"

Instance:		MotherDrugUseBirthingExample
InstanceOf: 	ObservationMotherDrugUse
Description: 	"Example Observation of the Mother's Drug Use During Pregnancy"
Usage: 			#example
* id = "MotherDrugUseBirthingExample"
* status = #final
* code = $loinc#89495-6 "Drug use by Mother --during pregnancy"
* subject = Reference(PatientNewbornExample)
* focus = Reference(MotherRelatedPersonBirthingExample)
* valueCodeableConcept = http://fdasis.nlm.nih.gov#QVU94XE61A "3-METHYLFENTANYL"
* performer = Reference(MotherRelatedPersonBirthingExample)
* effectiveDateTime = "2019-12-02"
