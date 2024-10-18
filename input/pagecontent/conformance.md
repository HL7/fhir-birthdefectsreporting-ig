### General Conformance Requirements
This FHIR IG specifies the content of data bundles sent as part of the birth defects reporting process.
The primary conformance requirement is that the sender and the receiver of the data agree on the required fields for their exchange. The ability to generate and process the FHIR profiles, fields, and components referenced in the data dictionary required for the particular exchange between a sender and receiver represent the conformance requirements for this IG.   Creaters of content should consult with the intended recipient of the data to determine the precise set of fields that are required for their intended exchange.

### Capability Statement
No capability statement is included because no IG-specific operations or search capabilities are required and the only expectation is that senders can send a message bundle and receivers can receive one, where the messaging transactions are defined elsewhere.

### Must Support
Given the general conformance requirements outlined above, this IG does not add any Must Support flags to its profiles.  Fields that are used for exchange are all present in the differential view for each profile, and in the documentation for each profile.
