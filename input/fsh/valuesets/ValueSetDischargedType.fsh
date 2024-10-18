ValueSet: DischargedStatusVS
Id: ValueSet-discharged-status
Title: "Discharged Status"
Description: "Valueset for discharged status"
* ^experimental = false
* LocalBDRCodesCS#unknown "Unknown" //equivalent to 9 in MI spec
* LocalBDRCodesCS#status_discharge_alive "Discharged Alive"
* LocalBDRCodesCS#status_discharge_transferred "Transferred"
* LocalBDRCodesCS#status_discharge_dead "Discharged Dead"
* LocalBDRCodesCS#status_discharge_not-discharged "Not Discharged"