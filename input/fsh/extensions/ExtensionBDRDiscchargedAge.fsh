Extension: ExtensionDischargedAge
Id: Extension-discharged-age
Title: "Reported Age At discharge"
Description: "This Extension profile represents the reported age of the patient at discharged time"
* ^experimental = false
* value[x] 1..1
* value[x] only Quantity
* valueQuantity ^short = "Reported age"
  * code from ValueSetUnitsOfAge (required) // = $UCUM#wk (exactly)
  * value 1..1