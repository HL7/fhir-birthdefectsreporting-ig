Instance: EncounterBDRExample
InstanceOf: EncounterBDR
Title: "Encounter - BDR specific"
Description: "Encounter - BDR"
Usage: #example
* id = "EncounterBDRExample"
* identifier
  * system = "http://xyzhospital.smarthealthit.org"
  * value = "9937012"
* status = #finished
//* extension[patientType]
//  * valueCodeableConcept = LocalBDRCodesCS#loc_inpatient "InPatient"
//* extension[AdmittedAge]
//  * valueQuantity = 10 'wk'
* class = $v3-ActCode#IMP "inpatient encounter"
* type = $cpt#99234
* subject = Reference(PatientChildExample) "Child patient"
* period
  * start = "2019-02-12T13:00:00-07:00"
  * end = "2019-02-15T10:00:00-07:00"
* hospitalization
  * admitSource = LocalBDRCodesCS#status_admit_any "Any Admission"
  * dischargeDisposition = LocalBDRCodesCS#status_discharge_alive "Discharged Alive"
    * text = "The patient was Discharged Alive."
* serviceProvider = Reference (HospitalSubmitterExample) "Location - hospital submitter"