Instance: Encounter-delivery-example
InstanceOf: USCoreEncounterProfile
Title: "EncounterDeliveryExample"
Description: "Encounter - Delivery Example"
Usage: #example
* id = "EncounterDeliveryExample"
* identifier
  * system = "http://xyzhospital.smarthealthit.org"
  * value = "9937012"
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
//* type = $cpt#99234
* type = $sct#177184002
  * text = "Normal delivery procedure (procedure)"
* subject = Reference(MotherPatientExample) "Mother patient"
* period
  * start = "2019-02-12T13:00:00-07:00"
  * end = "2019-02-15T10:00:00-07:00"
* hospitalization
  * admitSource = LocalBDRCodesCS#status_admit_any "Any Admission"
  //* dischargeDisposition = LocalBDRCodesCS#status_discharge_alive "Discharged Alive"
  //  * text = "The patient was Discharged Alive."
* serviceProvider = Reference (HospitalSubmitterExample) "Location - hospital submitter"