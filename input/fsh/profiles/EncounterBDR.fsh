Profile: EncounterBDR
Parent: USCoreEncounterProfile
Id: Encounter-BDR
Title: "Encounter - BDR"
Description: "This Encounter profile represents a patient's encounter."

//* extension contains    // Extensions for BDR specific data elements
//    ExtensionBDRType named patientType 1..1
//* extension[patientType].valueCodeableConcept from PatientLocationTypeVS (required)
//* extension[patientType] ^short = "Differentiates Inpatient/Outpatient type Encounters."
//* extension contains
//    ExtensionAdmittedAge named AdmittedAge 0..1
//* extension[AdmittedAge] ^short = "Age of the patient at admission time"
//* extension contains 
//   ExtensionDischargedAge named DischargedAge 0..1
//* extension[DischargedAge] ^short = "Age of the patient at discharged time"

* hospitalization.admitSource from AdmissionStatusVS (required)
* hospitalization.dischargeDisposition from DischargedStatusVS (required)