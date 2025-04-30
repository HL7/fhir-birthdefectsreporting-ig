Alias:			PHDSC = urn:oid:2.16.840.1.113883.3.221.5 

Instance:          MotherPatientExample
InstanceOf:        Patient-mother-vr
Description:       "Example Mother as a Patient"
Usage:             #example
* id = "MotherPatientExample"
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


Instance:           PregnancyOutcomeExample
InstanceOf:         ObservationPregnancyOutcome
Description:        "Example Observation of the Pregnancy Outcome"
Usage:              #example
* id = "PregnancyOutcomeExample"
* status = #final
* code = $loinc#64710-7 "Was your pregnancy a live birth, stillbirth, miscarriage, abortion, or ectopic pregnancy [PhenX]"
* subject = Reference(PatientNewbornExample)
* valueCodeableConcept = $sct#281050002 "Livebirth" 
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           AdmissionToNicuExample
//InstanceOf:         ObservationAdmissionToNICU
InstanceOf:         ObservationNICUAdmission
Description:        "Example Observation of a Patient Admission to the NICU"
Usage:              #example
* id = "AdmissionToNicuExample"
* status = #final
//* code = $sct#305351004 "Admission to intensive care unit"
* subject = Reference(PatientNewbornExample)
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"
//* valueBoolean = false 

Instance:           HeadCircumferenceExample
//Instance:           BirthHeadCircumferenceExample
//InstanceOf:         ObservationBirthHeadCircumference
InstanceOf:         us-core-head-circumference
Description:        "Example Observation of the Subject's Head Circumference at Birth"
Usage:              #example
* id = "HeadCircumferenceExample"
* status = #final
//* code = $loinc#8290-9 "Head Occipital-frontal circumference --at birth- by Tape measure"
* code = $loinc#9843-4 "Head Occipital-frontal circumference"
* subject = Reference(PatientNewbornExample)
* valueQuantity.value = 37
* valueQuantity.unit = #cm
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"
//* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           HeightExample
//Instance:           BirthHeightExample
//InstanceOf:         ObservationBirthHeight
InstanceOf:         us-core-body-height
Description:        "Example Observation of the Subject's Length at Birth"
Usage:              #example
* id = "BirthHeightExample"
* status = #final
* code = $loinc#8302-2 "Body height"
//* code = $loinc#8305-5 "Body height --post partum"
* subject = Reference(PatientNewbornExample)
* valueQuantity.value = 37
* valueQuantity.unit = #cm
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"
//* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           PrimaryInsuranceExample
InstanceOf:         ObservationMotherInsurance
Description:        "Example Observation of the Mother's Primary Insurance"
Usage:              #example
* id = "PrimaryInsuranceExample"
* status = #final
* code = $loinc#76437-3 "Primary insurance"
* subject = Reference(MotherPatientExample)
* valueCodeableConcept = PHDSC#5 "Private Health Insurance"
* performer = Reference(MotherPatientExample)
* effectiveDateTime = "2019-12-02"


Instance:           PreviousPretermBirthsExample
InstanceOf:         ObservationPreviousPretermBirths
Description:        "Example Observation of the Mother's Number of Previous Preterm Births"
Usage:              #example
* id = "PreviousPretermBirthsExample"
* status = #final
* code = $loinc#11637-6 "[#] Births.preterm"
* subject = Reference(MotherPatientExample)
* valueInteger = 1 
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           TotalPregnanciesExample
InstanceOf:         ObservationTotalPregnancies
Description:        "Example Observation of the Mother's Total Number of Pregnancies"
Usage:              #example
* id = "TotalPregnanciesExample"
* status = #final
* code = $loinc#11996-6 "[#] Pregnancies"
* subject = Reference(MotherPatientExample)
* valueInteger = 2
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

