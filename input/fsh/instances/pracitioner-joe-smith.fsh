Instance: practitioner-joe-smith
InstanceOf: PractitionerVitalRecords
Title: "Practitioner - example [Joe Smith]"
Description: "Example of Practitioner-vr profile (Dr. Joe Smith) with address extensions"
Usage: #example
* identifier
  * system = "http://hl7.org/fhir/sid/us-npi"
  * value = "223347044"
* name
  * family = "Joe"
  * given = "Smith"
* qualification.code = $sct#309343006 "Physician (occupation)"
* address.line = "142 Oak Steet"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "48105"
* address.country = "US"
