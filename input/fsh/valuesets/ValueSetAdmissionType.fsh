ValueSet: AdmissionStatusVS
Id: ValueSet-admission-status
Title: "Admission Status"
Description: "Valueset for admission status"
* ^experimental = false
* LocalBDRCodesCS#unknown "Unknown" //equivalent to 9 in MI spec
* LocalBDRCodesCS#status_admit_any "Any Admission"
* LocalBDRCodesCS#status_admit_not-admitted "Not Admitted"
* LocalBDRCodesCS#status_admit_transfer "Transferred"