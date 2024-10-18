Profile: ProcedurePostNatalEcho
Parent: USCoreProcedureProfile
Id: Procedure-post-natal-echo
Title: "Procedure - postnatal echo"
Description: "This profile represents postnatal echo."
* code = LocalBDRCodesCS#postnatalecho
* code MS
  * ^short = "Postnatal echo"
//* performed[x] 0..2 can NOT expand it from 0..1
* subject only Reference(PatientChildVitalRecords)