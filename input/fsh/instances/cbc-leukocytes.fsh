Instance: cbc-leukocytes-example
InstanceOf: USCoreLaboratoryResultObservationProfile
Description: "Example lab test result - CBC Leukocytes"
Usage: #example

* id = "cbcLeukocytesExample"
* status = #final
* category[us-core] = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* code.text = "WBCs"
* subject = Reference(Patient/PatientChildExample) "Child Patient"
* effectiveDateTime = "2020-07-05"
* valueQuantity = 10 '10*3/uL' "10*3/uL"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Normal"
* referenceRange.low = 4.5 '10*3/uL' "10*3/uL"
* referenceRange.high = 11 '10*3/uL' "10*3/uL"
* referenceRange.type = $referencerange-meaning#normal "Normal Range"
* referenceRange.type.text = "Normal Range"