Instance:		BDRMessageBundleExample
InstanceOf: 	BDRMessageBundle
Description: 	"Example BDR Message Bundle"
Usage: 			#example
* id = "BDRMessageBundleExample"
* identifier.value = "12345"
* type = #message
* timestamp = "2020-07-15T13:28:17.239+05:00"
* entry[0].fullUrl = "http://acme.com/ehr/fhir/MessageHeader/MessageHeaderExample"
* entry[0].resource.resourceType = "MessageHeader"
* entry[0].resource.id = "BDRMessageHeaderExample"
* entry[0].resource.eventCoding = LN#75609-8 "Birth defects Outpatient Registry report"
* entry[0].resource.destination.name = "Michigan BDRS"
* entry[0].resource.destination.endpoint = "http://acme.com"
* entry[0].resource.sender = Reference(BDRSubmittterExample)
* entry[0].resource.source.name = "EHR"
* entry[0].resource.source.endpoint = "http://acme.com"
* entry[0].resource.focus = Reference(ReportableDiagnosisExample)
* entry[1].fullUrl = "http://acme.com/ehr/fhir/Condition/ReportableDiagnosisExample"
* entry[1].resource.resourceType = "Condition"
* entry[1].resource.id = "ReportableDiagnosisExample"
* entry[1].resource.clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* entry[1].resource.verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* entry[1].resource.code = SCT#719046005 "12q14 microdeletion syndrome (disorder)"
<<<<<<< HEAD
* entry[1].resource.subject = Reference(PatientChildExample)
=======
* entry[1].resource.subject = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[1].resource.onsetDateTime = "2020-07-15"
* entry[2].fullUrl = "http://acme.com/ehr/fhir/Organization/BDRSubmittterExample"
* entry[2].resource.resourceType = "Organization"
* entry[2].resource.id = "BDRSubmittterExample"
* entry[2].resource.name = "Westside Clinic"
<<<<<<< HEAD
* entry[3].fullUrl = "http://acme.com/ehr/fhir/Patient/PatientChildExample"
* entry[3].resource.resourceType = "Patient"
* entry[3].resource.id = "PatientChildExample"
=======
* entry[3].fullUrl = "http://acme.com/ehr/fhir/Patient/BDRPatientExample"
* entry[3].resource.resourceType = "Patient"
* entry[3].resource.id = "BDRPatientExample"
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[3].resource.identifier[0].value = "1234"
* entry[3].resource.identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* entry[3].resource.identifier[0].system = "http://www.acme.com/identifiers/patient"
* entry[3].resource.identifier[1].value = "123456789"
* entry[3].resource.identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#SB
* entry[3].resource.identifier[1].system = "http://hl7.org/fhir/sid/us-ssn"
* entry[3].resource.name.family = "Wellington"
* entry[3].resource.name.given[0] = "Gene"
* entry[3].resource.name.given[1] = "Austin"
* entry[3].resource.gender = #male "Male"
* entry[3].resource.birthDate = "2020-04-28"
* entry[3].resource.deceasedBoolean = false
* entry[3].resource.multipleBirthBoolean = false
* entry[3].resource.address.line = "425 East 66th St"
* entry[3].resource.address.city = "Ann Arbor"
* entry[3].resource.address.state = "MI"
* entry[3].resource.address.postalCode = "48105"
* entry[4].fullUrl = "http://acme.com/ehr/fhir/Patient/MotherRelatedPersonExample"
* entry[4].resource.resourceType = "RelatedPerson"
* entry[4].resource.id = "MotherRelatedPersonExample"
<<<<<<< HEAD
* entry[4].resource.patient = Reference(PatientChildExample)
=======
* entry[4].resource.patient = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[4].resource.relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "Mother"
* entry[4].resource.name.family = "Wellington"
* entry[4].resource.name.given = "Sara"
* entry[4].resource.telecom.value = "734-555-6291"
* entry[4].resource.telecom.system = #phone "Phone"
* entry[4].resource.telecom.use = #mobile "Mobile"
* entry[4].resource.gender = #female "Female"
* entry[4].resource.birthDate = "1991-10-19"
* entry[4].resource.address.line = "425 East 66th St"
* entry[4].resource.address.city = "Ann Arbor"
* entry[4].resource.address.state = "MI"
* entry[4].resource.address.postalCode = "48105"
* entry[4].resource.communication.language = urn:ietf:bcp:47#en "English"
* entry[5].fullUrl = "http://acme.com/ehr/fhir/Patient/FatherRelatedPersonExample"
* entry[5].resource.resourceType = "RelatedPerson"
* entry[5].resource.id = "FatherRelatedPersonExample"
<<<<<<< HEAD
* entry[5].resource.patient = Reference(PatientChildExample)
=======
* entry[5].resource.patient = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[5].resource.relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "Father"
* entry[5].resource.name.family = "Wellington"
* entry[5].resource.name.given = "Adam"
* entry[5].resource.telecom.value = "734-555-9087"
* entry[5].resource.telecom.system = #phone "Phone"
* entry[5].resource.telecom.use = #mobile "Mobile"
* entry[5].resource.gender = #female "Female"
* entry[5].resource.birthDate = "1992-03-17"
* entry[5].resource.address.line = "425 East 66th St"
* entry[5].resource.address.city = "Ann Arbor"
* entry[5].resource.address.state = "MI"
* entry[5].resource.address.postalCode = "48105"
* entry[5].resource.communication.language = urn:ietf:bcp:47#en "English"
* entry[6].fullUrl = "http://acme.com/ehr/fhir/Observation/BDRMotherEducationExample"
* entry[6].resource.resourceType = "Observation"
* entry[6].resource.id = "BDRMotherEducationExample"
* entry[6].resource.status = #final
* entry[6].resource.code = LN#57712-2 "Highest level of education Mother"
<<<<<<< HEAD
* entry[6].resource.subject = Reference(PatientChildExample)
=======
* entry[6].resource.subject = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[6].resource.focus = Reference(MotherRelatedPersonExample)
* entry[6].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#BD
* entry[7].fullUrl = "http://acme.com/ehr/fhir/Observation/BDRFatherEducationExample"
* entry[7].resource.resourceType = "Observation"
* entry[7].resource.id = "BDRFatherEducationExample"
* entry[7].resource.status = #final
* entry[7].resource.code = LN#87300-0 "Highest level of education Father"
<<<<<<< HEAD
* entry[7].resource.subject = Reference(PatientChildExample)
=======
* entry[7].resource.subject = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[7].resource.focus = Reference(FatherRelatedPersonExample)
* entry[7].resource.valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-EducationLevel#SCOL
* entry[8].fullUrl = "http://acme.com/ehr/fhir/Observation/BDRInfantLiving"
* entry[8].resource.resourceType = "Observation"
* entry[8].resource.id = "BDRInfantLiving"
* entry[8].resource.status = #final
<<<<<<< HEAD
* entry[8].resource.code = LN#73757-7 "Infant living at time of report [US Standard Certificate of Live Birth]"
* entry[8].resource.subject = Reference(PatientChildExample)
=======
* entry[8].resource.code = LN#73757-7 "Infant living at time of report"
* entry[8].resource.subject = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[8].resource.valueBoolean = true
* entry[9].fullUrl = "http://acme.com/ehr/fhir/Observation/BDRMotherAlcoholUse"
* entry[9].resource.resourceType = "Observation"
* entry[9].resource.id = "BDRMotherAlcoholUse"
* entry[9].resource.status = #final
* entry[9].resource.code = SCT#160573003 "Alcohol Intake"
<<<<<<< HEAD
* entry[9].resource.subject = Reference(PatientChildExample)
=======
* entry[9].resource.subject = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[9].resource.focus = Reference(MotherRelatedPersonExample)
* entry[9].resource.valueString = "No alcohol use during pregnancy"


/*
* entry[10].fullUrl = "http://acme.com/ehr/fhir/Observation/BDRMotherDrugUse"
* entry[10].resource.resourceType = "Observation"
* entry[10].resource.id = "BDRMotherDrugUse"
* entry[10].resource.status = #final
* entry[10].resource.code = LN#89495-6 "Drug use by Mother --during pregnancy"
<<<<<<< HEAD
* entry[10].resource.subject = Reference(PatientChildExample)
=======
* entry[10].resource.subject = Reference(BDRPatientExample)
>>>>>>> a17708bb36ec77244641b2a671674db5c7b22365
* entry[10].resource.focus = Reference(MotherRelatedPersonExample)
* entry[10].resource.valueCodeableConcept = http://fdasis.nlm.nih.gov#6DZ28538KS "ACETYLFENTANYL"
*/