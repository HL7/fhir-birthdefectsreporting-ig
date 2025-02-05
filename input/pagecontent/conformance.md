### General Conformance Requirements
This FHIR IG specifies the content of data bundles sent as part of the birth defects reporting process.
The primary conformance requirement is that the sender and the receiver of the data agree on the required fields for their exchange. The ability to generate and process the FHIR profiles, fields, and components referenced in the data dictionary required for the particular exchange between a sender and receiver represent the conformance requirements for this IG.   Creaters of content should consult with the intended recipient of the data to determine the precise set of fields that are required for their intended exchange.

### Capability Statement
No capability statement is included because no IG-specific operations or search capabilities are required and the only expectation is that senders can send a message bundle and receivers can receive one, where the messaging transactions are defined elsewhere.

### Must Support
Given the general conformance requirements outlined above, this IG does not add any Must Support flags to its profiles.  Fields that are used for exchange are all present in the differential view for each profile, and in the documentation for each profile.

The Birth Defect Reporting Implementation Guide has adopted modified Must Support requirements based on the [US Core guidelines](http://www.hl7.org/fhir/us/core/general-guidance.html#must-support).

For transmitting and receiving BDR profiles, Must Support on any profile data element SHALL be interpreted as follows:

* Data Providers SHALL be capable of populating all Must Support data elements and SHALL populate any given elements when the appropriate information is known.
* Data Recipients SHALL be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. 
* Data Recipients SHALL interpret missing data elements within resource instances as data not present in the Data Provider's system.
* In situations where information on a particular data element is missing and the Data Providers knows the precise reason for the absence of data, Data Providers SHOULD send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or using the dataAbsentReason extension.
* Data Recipients SHALL be able to process resource instances containing data elements asserting missing information.
