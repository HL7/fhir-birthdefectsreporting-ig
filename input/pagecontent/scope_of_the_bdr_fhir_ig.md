# Introduction
This Implementation Guide contains the necessary FHIR profiles for the implementation of standardized data transmissions from a provider EHR to a birth defect registry. This document is designed to provide HealthIT vendors with the specifications for developing the functionality to send/receive information on birth defects patients to a birth defect registry. The specification may also be informative to ambulatory healthcare providers, hospital staff, registry staff, developers, analysts and managers of public health information systems and/or data exchanges. 

# Scope
The scope of this document is centered on the reporting of a birth defect diagnosis for a given subject/patient and potentially related data about the pregnancy and delivery for the subject. Key conceptual areas can be broadly divided into two types, core data that all submitters are expected to be able to support and data related to pregnancy and delivery which is more relevant to reports from birthing facilities. Data elements include:
* Patient demographics and administrative information
* Responsible party information (particularly about the mother and father of the subject)
* Submitting provider/organization information
* Birth defect diagnosis data (including conditions and problems related to the birth defect)
* Pregnancy related data
* Delivery related data (including outcomes, observations and procedures related to the birth defect)
* Other relevant clinical data about report subject
* following contents - to be updated

Note: The current model for submitting a Birth Defects report is one BD report per encounter (where the encounter deals with a reportable BD)

![Birth Defect Report Data Content](BDRcorecontent.png)

Individual data elements can be mapped to specific resource profiles defined by this and other implementation guides. See table below for details:

* [Birth Defect Report Data Content Mapping](BirthDefectsReportingIG_GapAnalysis.csv)

# Patient Scope
In many jurisdictions, the scope of birth defect reporting focuses on subject under the age of 24 months. Jurisdictional requirements may extend the scope to include older subjects (e.g. those under 12 years of age) if the birth defect is not diagnosed at an earlier age. Typically however, reporting  does not extend to adult subjects. 

Reporting requirements often include both living and deceased subjects and may include stillborn subjects, miscarriages and elective terminations as determined by jurisdictional scope. This implementation guide provides profiles for both scenarios. The Patient - Child profile should be used for reporting where the report subject was a live birth. The Patient - Decedent Fetus profile should be used to report on stillborn subjects, miscarriages and elective terminations as necessary. As well, it should be noted that the Patient - Mother profile is used when the report contains pregnancy/delivery information in the form of Observations where the subject of the Observation is the birth mother.

# Context in the Larger Reporting Framework
From the perspective of the jurisdictional birth defect registry, a birth defect case for a given subject may be comprised of data collected from multiple sources submitted over an extended time period. Compiled cases may then shared with or reported to national programs. For the purposes of this Implementation Guide, we will focus on the requirements for providers and organizations to submit reports containing birth defect related data to the jurisdictional birth defect registry. The consolidation of data from these reports by the jurisdiction into a larger case, and the reporting of that case data to a national consumer may be the subject of future iterations of this specification. 

# Usage in Other Realms
While this document is US Realm specific, the constraints and content of this specification may be applicable to other jurisdictions.

# Security
Implementers should be aware of and follow the base standard [FHIR Security Considerations](http://hl7.org/fhir/R4/security.html).
