The Birth Defect Reporting Implementation Guide has adopted modified Must Support requirements based on the [US Core guidelines](http://www.hl7.org/fhir/us/core/general-guidance.html#must-support).

For transmitting and receiving BDR Profiles, Must Support on any profile data element SHALL be interpreted as follows:

* Data Providers SHALL be capable of populating all Must Support data elements and SHALL populate any given elements when the appropriate information is known.
* Data Recipients SHALL be capable of processing resource instances containing the data elements without generating an error or causing the application to fail. 
* In situations where information on a particular data element is not present and the reason for absence is unknown, Data Providers SHALL NOT include the data elements in the resource instance returned as part of the query results.
* Data Recipients SHALL interpret missing data elements within resource instances as data not present in the Data Provider's system.
* In situations where information on a particular data element is missing and the Data Providers knows the precise reason for the absence of data, Data Providers SHOULD send the reason for the missing information using values (such as nullFlavors) from the value set where they exist or using the dataAbsentReason extension.
* Data Recipients SHALL be able to process resource instances containing data elements asserting missing information.
