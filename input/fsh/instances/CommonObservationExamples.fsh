Instance:           ApgarFiveMinuteExample
InstanceOf:         Observation-apgar-score
Description:        "Example Observation of the Five Minute APGAR score"
Usage:              #example
* id = "ApgarFiveMinuteExample"
* status = #final
* code = $loinc#9274-2 "5 minute Apgar Score"
* subject = Reference(PatientNewbornExample)
* valueInteger = 7
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           ApgarTenMinuteExample
InstanceOf:         Observation-apgar-score
Description:        "Example Observation of the Ten Minute APGAR score"
Usage:              #example
* id = "ApgarTenMinuteExample"
* status = #final
* code = $loinc#9271-8 "10 minute Apgar Score"
* subject = Reference(PatientNewbornExample)
* valueInteger = 10
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           LaborOnsetExample
InstanceOf:         ObservationMotherLaborOnset
Description:        "Example Observation of the Onset of Labor"
Usage:              #example
* id = "LaborOnsetExample"
* status = #final
* code = $loinc#73774-2 "Onset of labor [US Standard Certificate of Live Birth]"
* subject = Reference(MotherPatientExample)
* valueCodeableConcept = $sct#51920004 "Precipitate labor"
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           BirthsNowLivingExample
InstanceOf:         Observation-number-births-now-living
Description:        "Example Observation of the Number of Previous Births Now Living"
Usage:              #example
* id = "BirthsNowLivingExample"
* status = #final
* code = $loinc#11638-4 "[#] Births.still living"
* subject = Reference(MotherPatientExample)
* valueInteger = 1
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           BirthsNowDeadExample
InstanceOf:         Observation-number-births-now-dead
Description:        "Example Observation of the Number of Previous Births Now Dead"
Usage:              #example
* id = "BirthsNowDeadExample"
* status = #final
* code = $loinc#68496-9 "Previous live births now dead #"
* subject = Reference(MotherPatientExample)
* valueInteger = 0
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           GestationalAgeExample
InstanceOf:         Observation-gestational-age-at-delivery
Description:        "Example Observation of the Gestational Age at the Time of Delivery"
Usage:              #example
* id = "GestationalAgeExample"
* status = #final
* code = $loinc#11884-4 "Gestational age Estimated"
* subject = Reference(MotherPatientExample)
* valueQuantity.value = 39
* valueQuantity.code = #wk
* valueQuantity.system = "http://unitsofmeasure.org"
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"
//* method = ??


Instance:           FetalDeathsExample
InstanceOf:         Observation-number-fetal-deaths-this-delivery
Description:        "Example Observation of Number of Fetal Deaths this Delivery"
Usage:              #example
* id = "FetalDeathsExample"
* status = #final
* code = $loinc#73772-6 "Number of fetal deaths delivered"
* subject = Reference(MotherPatientExample)
* valueInteger = 1
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           BirthWeightExample
InstanceOf:         Observation-birth-weight
Description:        "Example Observation of the Newborn's Birth Weight"
Usage:              #example
* id = "BirthWeightExample"
* status = #final
* code = $loinc#8339-4 "Birth weight Measured"
* subject = Reference(PatientNewbornExample)
* effectiveDateTime = "2020-04-28"
* valueQuantity.value = 3200
* valueQuantity.code = #g
* valueQuantity.system = "http://unitsofmeasure.org"
* performer = Reference(practitioner-joe-smith)


Instance:           MotherDeliveryWeightExample
InstanceOf:         ObservationMotherDeliveryWeight
Description:        "Example Observation of the Mother's Delivery Weight"
Usage:              #example
* id = "MotherDeliveryWeightExample"
* status = #final
* code = $loinc#69461-2 "Mother's body weight --at delivery"
* subject = Reference(MotherPatientExample)
* valueQuantity = 175 '[lb_av]'
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           LMPExample
InstanceOf:         Observation-last-menstrual-period
Description:        "Example Observation of the Mother's Last Menstrual Period"
Usage:              #example
* id = "LMPExample"
* status = #final
* code = $loinc#8665-2 "Last menstrual period start date"
* subject = Reference(MotherPatientExample)
* valueDateTime = 2019-07-15
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           MotherPrepregnancyWeightExample
InstanceOf:         ObservationMotherPrepregnancyWeight
Description:        "Example Observation of the Mother's Prepregnancy Weight"
Usage:              #example
* id = "MotherPrepregnancyWeightExample"
* status = #final
* code = $loinc#56077-1 "Body weight --pre current pregnancy"
* subject = Reference(MotherPatientExample)
//* effectiveDateTime = 2019-07-31
* valueQuantity = 150 '[lb_av]'
//* valueQuantity.system = "http://unitsofmeasure.org"
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           LiveBirthsThisPregnancyExample
InstanceOf:         Observation-number-live-births-this-delivery
Description:        "Example Observation of the Number of Live Births for this Delivery"
Usage:              #example
* id = "LiveBirthsThisPregnancyExample"
* status = #final
* code = $loinc#73773-4 "Number of infants in this delivery delivered alive"
* subject = Reference(MotherPatientExample)
* valueInteger = 1
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           MotherHeightExample
InstanceOf:         ObservationMotherHeight
Description:        "Example Observation of the Mother's Height"
Usage:              #example
* id = "MotherHeightExample"
* status = #final
//* code = $loinc#3137-7 "Body height Measured"
* code = $loinc#8302-2 
* subject = Reference(MotherPatientExample)
//* effectiveDateTime = 2020-04-28
* performer = Reference(MotherPatientExample)
* valueQuantity = 65 '[in_i]' "in"
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           PrenatalVisitsExample
InstanceOf:         Observation-number-prenatal-visits
Description:        "Example Observation of the Number of Prenatal Visits"
Usage:              #example
* id = "PrenatalVisitsExample"
* status = #final
* code = $loinc#68493-6 "Prenatal visits for this pregnancy #"
* subject = Reference(MotherPatientExample)
* effectiveDateTime = "2019-12-02"
* valueInteger = 18
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"


Instance:           PluralityExample
InstanceOf:         Observation-birth-plurality-of-pregnancy
Description:        "Example Observation of the Plurality of the Pregnancy"
Usage:              #example
* id = "PluralityExample"
* status = #final
//* code = $loinc#57722-1 "Birth plurality of Pregnancy"
* subject = Reference(MotherPatientExample)
* valueInteger = 2
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           OtherOutcomesExample
InstanceOf:         Observation-number-other-pregnancy-outcomes
Description:        "Example Observation of Number of Other Pregnancy Outcomes"
Usage:              #example
* id = "OtherOutcomesExample"
* status = #final
* code = $loinc#69043-8 "Other pregnancy outcomes #"
* subject = Reference(MotherPatientExample)
* valueInteger = 1
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"

Instance:           PreviousCesareansExample
InstanceOf:         Observation-number-previous-cesareans
Description:        "Example Observation of the Number of the Mother's Previous Cesareans"
Usage:              #example
* id = "PreviousCesareansExample"
* status = #final
* code = $loinc#68497-7 "Previous cesarean deliveries #"
* subject = Reference(MotherPatientExample)
* valueInteger = 0
* performer = Reference(practitioner-joe-smith)
* effectiveDateTime = "2019-12-02"