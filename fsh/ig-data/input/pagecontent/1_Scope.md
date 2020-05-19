# Introduction
This Implementation Guide contains the necessary FHIR profiles for the implementation of standardized data transmissions from a provider EHR to a birth defect registry. This document is designed to provide HealthIT vendors with the specifications for developing the functionality to send/receive information on birth defects patients to a birth defect registry. The specification may also be informative to ambulatory healthcare providers, hospital staff, registry staff, developers, analysts and managers of public health information systems and/or data exchanges. 

# Scope
The scope of this document is centered on the reporting of a birth defect diagnosis for a given subject/patient and potentially related data about the pregnancy and delivery for the subject. Key conceptual areas include:
* Patient demographics and administrative information
* Responsible party information - particularly about the mother and father of the subject
* Submitting provider/organization information
* Birth defect diagnosis data
* Pregnancy related data
* Delivery related data - including outcomes, observations, medications and procedures
* Other relevant clinical data about report subject

![Birth Defect Report Data Content](./expanded core content organization.jpg)

In many jurisdictions, the scope of birth defect reporting focuses on subject under the age of 24 months. Jurisdictional requirements may extend the scope to include older subjects (e.g. those under 12 years of age) if the birth defect is not diagnoses at an earlier age. Typically however, reporting  does not extend to adult subjects. Reporting requirements typically include both living and deceased subjects and may include stillborn subjects, miscarriages and elective terminations as determined by jurisdictional scope.
# Context in the Larger Reporting Framework
From the perspective of the jurisdictional birth defect registry, a birth defect case for a given subject may be comprised of data collected from multiple sources submitted over an extended time period. Compiled cases may then shared with or reported to national programs. For the purposes of this Implementation Guide, we will focus on the requirements for providers and organizations to report birth defect related data to the jurisdictional birth defect registry. The consolidate of data by the registry into a larger case, and the reporting of that case data to a national consumer may be the subject of future iterations of this specification. 

While this document is US Realm specific, the constraints and content of this specification may be applicable to other jurisdictions.