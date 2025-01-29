Instance: procedure-postnatal-echo-example
InstanceOf: ProcedurePostNatalEcho
Title: "Procedure - postnatal-echo-example"
Description: "Procedure - postnatal-echo-example"
Usage: #example
* status = #completed
* code = LocalBDRCodesCS#postnatalecho "Postnatal echo"
* subject
  * reference = "Patient/PatientChildExample"
  * display = "Child Patient"
* performedDateTime = "2024-02-12T12:45:00-07:00" //performed date