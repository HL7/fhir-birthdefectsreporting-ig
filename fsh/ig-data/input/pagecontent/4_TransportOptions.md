The FHIR standard supports multiple transport options. Consistent with out FHIR Implementation Guides in other areas including Electronic Case Reporting and Bidirectional Services eReferrals, this specification supports two transport options:
* FHIR Messaging
* Best REST

Flexibility is necessary to support different transport architectures including point-to-point transport and transport through Health Information Exchanges and Health Information Networks.

# FHIR Messaging Option
One option for transmitting the content in this implementation guide is the use of FHIR Messaging. FHIR Messaging involves the use of a top-level FHIR Message bundle and then a small FHIR Messaging header. FHIR Messaging enables the movement of content through an information exchange intermediary and allows, but does not require, a store and forward exchange paradigm. The FHIR Message header includes the identity of the ultimate intended recipient and other information helpful for message exchange. All resources should be populated in the FHIR Message bundle because subsequent retrieval of resources back through an intermediary may not be enabled.

The following profiles have been defined for the FHIR Messaging Option:
<**To Do**: add profiles> - also not that this section and the one that follows have been cut and paste from the ECR IG - the requirements really should be the same and are already shared with BSeR

# Basic REST Option
The second option for transmitting the content in this implementation guide is described here as Basic REST. In this case, a point-to-point RESTful exchange is supported. If the immediate inclusion of all resource content must be ensured, then a top level bundle and insistence on their inclusion will be the responsibility of the transmitting server.

The following profiles have been defined for the RESTful Submit Option:
<**To Do**: add profiles>