Alias:			PHDSC = urn:oid:2.16.840.1.113883.3.221.5 

Instance:          BDRMotherPatientExample
InstanceOf:        PatientMother
Description:       "Example Mother as a Patient"
Usage:             #example
* id = "BDRMotherPatientExample"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-race].extension[text].valueString = "White"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* identifier[0].value = "6789"
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[0].system = "http://www.acme.com/identifiers/patient"
* identifier[1].value = "111223333"
* identifier[1].type = http://terminology.hl7.org/CodeSystem/v2-0203#SB
* identifier[1].system = "http://hl7.org/fhir/sid/us-ssn"
* name.family = "Boucher"
* name.given[0] = "Miranda"
* name.given[1] = "Stephanie"
* name.use = #official
* gender = #female "Female"
* birthDate = "1988-02-17"
* deceasedBoolean = false
* multipleBirthBoolean = false
* address.line = "45 Clearview Ave"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* link.other = Reference(MotherRelatedPersonBirthingExample)
* link.type = #seealso



//Instance:           BDRxxx
//InstanceOf:         Observation
//Description:        "Example BDR Observation of "
//Usage:              #example
//* id = "TN007"
//* status = #final
//* code = LN#xxxx ""
//* subject = Reference(PatientNewbornExample)
//* value[x] = 


Instance:           PregnancyOutcomeExample
InstanceOf:         ObservationPregnancyOutcome
Description:        "Example Observation of the Pregnancy Outcome"
Usage:              #example
* id = "PregnancyOutcomeExample"
* status = #final
* code = LN#64710-7 "Was your pregnancy a live birth, stillbirth, miscarriage, abortion, or ectopic pregnancy [PhenX]"
* subject = Reference(PatientNewbornExample)
* valueCodeableConcept = SCT#281050002 "Livebirth" 


Instance:           AdmissionToNicuExample
InstanceOf:         ObservationAdmissionToNICU
Description:        "Example Observation of a Patient Admission to the NICU"
Usage:              #example
* id = "AdmissionToNicuExample"
* status = #final
* code = SCT#305351004 "Admission to intensive care unit"
* subject = Reference(PatientNewbornExample)
* valueBoolean = false 


Instance:           BirthHeadCircumferenceExample
InstanceOf:         ObservationBirthHeadCircumference
Description:        "Example Observation of the Subject's Head Circumference at Birth"
Usage:              #example
* id = "BirthHeadCircumferenceExample"
* status = #final
* code = LN#8290-9 "Head Occipital-frontal circumference --at birth- by Tape measure"
* subject = Reference(PatientNewbornExample)
* valueQuantity.value = 37
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"


Instance:           BirthHeightExample
InstanceOf:         ObservationBirthHeight
Description:        "Example Observation of the Subject's Length at Birth"
Usage:              #example
* id = "BirthHeightExample"
* status = #final
* code = LN#8305-5 "Body height --post partum"
* subject = Reference(PatientNewbornExample)
* valueQuantity.value = 37
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"


Instance:           PrimaryInsuranceExample
InstanceOf:         ObservationMotherInsurance
Description:        "Example Observation of the Mother's Primary Insurance"
Usage:              #example
* id = "PrimaryInsuranceExample"
* status = #final
* code = LN#76437-3 "Primary insurance"
* subject = Reference(BDRMotherPatientExample)
* valueCodeableConcept = PHDSC#5 "Private Health Insurance"


Instance:           PreviousPretermBirthsExample
InstanceOf:         ObservationPreviousPretermBirths
Description:        "Example Observation of the Mother's Number of Previous Preterm Births"
Usage:              #example
* id = "PreviousPretermBirthsExample"
* status = #final
* code = LN#11637-6 "[#] Births.preterm"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 1 


Instance:           TotalPregnanciesExample
InstanceOf:         ObservationTotalPregnancies
Description:        "Example Observation of the Mother's Total Number of Pregnancies"
Usage:              #example
* id = "TotalPregnanciesExample"
* status = #final
* code = LN#11996-6 "[#] Pregnancies"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 2

