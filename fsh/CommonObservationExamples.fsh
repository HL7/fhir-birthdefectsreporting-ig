Instance:           ApgarFiveMinuteExample
InstanceOf:         ObservationApgarScore
Description:        "Example Observation of the Five Minute APGAR score"
Usage:              #example
* id = "ApgarFiveMinuteExample"
* status = #final
* code = LN#9274-2 "5 minute Apgar Score"
* subject = Reference(PatientNewbornExample)
* valueInteger = 7


Instance:           ApgarTenMinuteExample
InstanceOf:         ObservationApgarScore
Description:        "Example Observation of the Ten Minute APGAR score"
Usage:              #example
* id = "ApgarTenMinuteExample"
* status = #final
* code = LN#9271-8 "10 minute Apgar Score"
* subject = Reference(PatientNewbornExample)
* valueInteger = 10


Instance:           LaborOnsetExample
InstanceOf:         ObservationMotherLaborOnset
Description:        "Example Observation of the Onset of Labor"
Usage:              #example
* id = "LaborOnsetExample"
* status = #final
* code = LN#73774-2 "Onset of labor [US Standard Certificate of Live Birth]"
* subject = Reference(BDRMotherPatientExample)
* valueCodeableConcept = SCT#51920004 "Precipitate labor"


Instance:           BirthsNowLivingExample
InstanceOf:         ObservationNumberBirthsNowLiving
Description:        "Example Observation of the Number of Previous Births Now Living"
Usage:              #example
* id = "BirthsNowLivingExample"
* status = #final
* code = LN#11638-4 "[#] Births.still living"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 1


Instance:           BirthsNowDeadExample
InstanceOf:         ObservationNumberBirthsNowDead
Description:        "Example Observation of the Number of Previous Births Now Dead"
Usage:              #example
* id = "BirthsNowDeadExample"
* status = #final
* code = LN#68496-9 "Previous live births now dead #"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 0


Instance:           GestationalAgeExample
InstanceOf:         ObservationGestationalAgeAtDelivery
Description:        "Example Observation of the Gestational Age at the Time of Delivery"
Usage:              #example
* id = "GestationalAgeExample"
* status = #final
* code = LN#11884-4 "Gestational age Estimated"
* subject = Reference(BDRMotherPatientExample)
* valueQuantity.value = 39
* valueQuantity.code = #wk
* valueQuantity.system = "http://unitsofmeasure.org"
//* method = ??


Instance:           FetalDeathsExample
InstanceOf:         ObservationNumberFetalDeathsThisDelivery
Description:        "Example Observation of Number of Fetal Deaths this Delivery"
Usage:              #example
* id = "FetalDeathsExample"
* status = #final
* code = LN#73772-6 "Number of fetal deaths delivered"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 1


Instance:           BirthWeightExample
InstanceOf:         ObservationBirthWeight
Description:        "Example Observation of the Newborn's Birth Weight"
Usage:              #example
* id = "BirthWeightExample"
* status = #final
* code = LN#8339-4 "Birth weight Measured"
* subject = Reference(PatientNewbornExample)
* valueQuantity.value = 3200
* valueQuantity.code = #g
* valueQuantity.system = "http://unitsofmeasure.org"


Instance:           MotherDeliveryWeightExample
InstanceOf:         ObservationMotherDeliveryWeight
Description:        "Example Observation of the Mother's Delivery Weight"
Usage:              #example
* id = "MotherDeliveryWeightExample"
* status = #final
* code = LN#69461-2 "Mother's body weight --at delivery"
* subject = Reference(BDRMotherPatientExample)
* effectiveDateTime = 2020-04-28
* valueQuantity.value = 73
* valueQuantity.code = #kg
* valueQuantity.system = "http://unitsofmeasure.org"


Instance:           LMPExample
InstanceOf:         ObservationLastMenstrualPeriod
Description:        "Example Observation of the Mother's Last Menstrual Period"
Usage:              #example
* id = "LMPExample"
* status = #final
* code = LN#8665-2 "Last menstrual period start date"
* subject = Reference(BDRMotherPatientExample)
* valueDateTime = 2019-07-15


Instance:           MotherPrepregnancyWeightExample
InstanceOf:         ObservationPrepregnancyWeight
Description:        "Example Observation of the Mother's Prepregnancy Weight"
Usage:              #example
* id = "MotherPrepregnancyWeightExample"
* status = #final
* code = LN#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(BDRMotherPatientExample)
* effectiveDateTime = 2019-07-31
* valueQuantity.value = 57
* valueQuantity.code = #kg
* valueQuantity.system = "http://unitsofmeasure.org"


Instance:           LiveBirthsThisPregnancyExample
InstanceOf:         ObservationNumberLiveBirthsThisDelivery
Description:        "Example Observation of the Number of Live Births for this Delivery"
Usage:              #example
* id = "LiveBirthsThisPregnancyExample"
* status = #final
* code = LN#73773-4 "Number of infants in this delivery delivered alive"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 1



Instance:           MotherHeightExample
InstanceOf:         ObservationMotherHeight
Description:        "Example Observation of the Mother's Height"
Usage:              #example
* id = "MotherHeightExample"
* status = #final
* code = LN#3137-7 "Body height Measured"
* subject = Reference(BDRMotherPatientExample)
* effectiveDateTime = 2020-04-28
* valueQuantity.value = 160
* valueQuantity.code = #cm
* valueQuantity.system = "http://unitsofmeasure.org"


Instance:           PrenatalVisitsExample
InstanceOf:         ObservationNumberPrenatalVisits
Description:        "Example Observation of the Number of Prenatal Visits"
Usage:              #example
* id = "PrenatalVisitsExample"
* status = #final
* code = LN#68493-6 "Prenatal visits for this pregnancy #"
* subject = Reference(BDRMotherPatientExample)
* effectivePeriod.start = 2019-08-01
* effectivePeriod.end = 2020-04-20
* valueInteger = 18



Instance:           PlaceOfBirthExample
InstanceOf:         ObservationPlaceOfBirthType
Description:        "Example Observation of the Type of Place of Birth"
Usage:              #example
* id = "PlaceOfBirthExample"
* status = #final
* code = LN#73766-8 "Place where birth occurred [US Standard Certificate of Live Birth]"
* subject = Reference(PatientNewbornExample)
* valueCodeableConcept = SCT#22232009 "Hospital"


Instance:           PluralityExample
InstanceOf:         ObservationPlurality
Description:        "Example Observation of the Plurality of the Pregnancy"
Usage:              #example
* id = "PluralityExample"
* status = #final
* code = LN#57722-1 "Birth plurality of Pregnancy"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 2


Instance:           OtherOutcomesExample
InstanceOf:         ObservationNumberOtherPregnancyOutcomes
Description:        "Example Observation of Number of Other Pregnancy Outcomes"
Usage:              #example
* id = "OtherOutcomesExample"
* status = #final
* code = LN#69043-8 "Other pregnancy outcomes #"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 1


Instance:           PreviousCesareansExample
InstanceOf:         ObservationNumberPreviousCesareans
Description:        "Example Observation of the Number of the Mother's Previous Cesareans"
Usage:              #example
* id = "PreviousCesareansExample"
* status = #final
* code = LN#68497-7 "Previous cesarean deliveries #"
* subject = Reference(BDRMotherPatientExample)
* valueInteger = 0