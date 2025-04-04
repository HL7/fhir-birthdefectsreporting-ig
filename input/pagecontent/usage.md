# Reporting Contexts
Providers reporting to birth defect registries may be operating in a variety of different healthcare contexts including ambulatory, outpatient and hospital settings. This can be achieved by using LOINC codes to indicate appropriate report type see (examples.html) for examples of birth defect reports. While the core data elements of the birth defect diagnoses report is substantially similar regardless of the submitter's context, when the report is generated as part of the delivery encounter at a birthing facility the expectations of the receiving jurisdictional program for data relating to the pregnancy and delivery encounter may be higher. Implementers of this IG should be prepared to exchange any of the data elements described within depending on the nature of the submitter and the local requirements for reporting (see below for more details).

# Actors
The primary actors in the provider reporting use case are:
* **Healthcare Provider EHR System**  - An electronic health record with the capability to capture and transform birth defect report information in accordance with the Public Health Jurisdiction requirements for Healthcare Provider Reporting to the Birth Defect Registry System. 
* **Public Health Agency Birth Defect Registry System** - A system collecting electronic birth defect reports and using that information to define birth defect cases. 

# Use Case Details
The Healthcare Provider Reporting Use Case is initiated every time a reportable birth defect diagnosis is associated with a patient or is subsequently updated.  If multiple reportable diagnoses are associated with the patient, they may be combined into a single report. The following is the sequence of events associated with this Use Case.
1. The Healthcare Provider EHR System captures and stores birth defect report information.
2. The Healthcare Provider EHR System or associated application generates an electronic birth defect report in accordance with this Implementation Guide.
3. The report is transmitted in a secured channel established between the submitter and the Public Health Agency Birth Defect Registry system.
4. The Healthcare Provider EHR System may choose to create a log of its data transactions for audit purposes. 
5. The Public Health Agency Birth Defect Registry System acts upon the Public Health Agency's behalf performing translation and validation operations and transforms the report into the birth defect registry system format.
6. The Public Health Agency Birth Defect Registry System may choose to create a log of its data transactions for audit and provenance purposes. 

# Assumptions
The following basic assumptions apply regardless of the reporting context:
* Business, legal and Health Insurance Portability and Accountability Act (HIPAA) policy, procedures and agreements are in place. 
* Reportable birth defect case information has been captured and stored in the EHR using the data elements and vocabulary standards compatible with this implementation guide. 
* The EHR or an associated app has the capability to create an electronic report (FHIR resources) in conformance with the structure and content standards specified in this implementation guide. 
* The EHR or an associated app has the capability to transmit the generated report, using the appropriate transport method(s) and network(s). 

# Report Content
Depending on the context of the report the clinical content of the report may vary. At a minimum, all reports should contain a central core of data including a Patient (report subject) resource, an Observation (indicating if the subject was living at the time of reporting) resource and one or more Condition (Reportable Diagnosis) resources. Additional RelatedPerson resources containing data on the Mother, Father and/or Responsible Party are strongly encouraged. Note the additional Observation resources related to the Mother or Father may also be present to indicate parental education level and maternal characteristics (eg. possible drug and alcohol use, risk factors and exposures). As described further below, genetic testing results may also be included as clinical content.

When the report is generated as part of the delivery encounter at a birthing facility the clinical content of the report should include additional data related to the pregnancy and delivery. The inclusion of Observation resources related to the pregnancy (eg. prenatal care, previous pregnancies, maternal vitals) require the presence of a Patient (mother) resource to act as the subject of the relationship.  Inclusion of Observation resources related to the newborn (eg. APGAR scores and newborn vitals) and newborn Procedure resources are also strongly encouraged to be included as clinical content in the report.

# Transport Option
The primary option for transmitting the content in this implementation guide is the use of FHIR Messaging. FHIR Messaging involves the use of a top-level FHIR Message bundle and then a small FHIR Messaging header. FHIR Messaging enables the movement of content through an information exchange intermediary and allows, but does not require, a store and forward exchange paradigm. The FHIR Message header includes the identity of the ultimate intended recipient and other information helpful for message exchange. All resources should be populated in the FHIR Message bundle because subsequent retrieval of resources back through an intermediary may not be enabled.

The following profiles have been defined for the FHIR Messaging Option:
*BDR Report Bundle
*BDR MessageHeader

# Guidance for Reporting Genetic Testing
A subset of genetic tests may be important to include in birth defect reports. Genetic test results may be reported using the US Core DiagnosticReport profile. The scope of tests may vary by jurisdiction but could include test types such as:
* Karyotype - The process of pairing and ordering all the chromosomes of an organism, providing a genome-wide snapshot of an individual's chromosomes
* Fluorescent in situ hybridization (FISH) - Uses fluorescent probes to detect DNA sequences on chromosomes and diagnose many types of chromosomal abnormalities in patients
* Comparative genomic hybridization (CGH/aCGH) - Provides a means of genome-wide screening for copy number variations
* Gene sequencing - May include sequencing of single genes, cohorts of genes and/or large scale (whole exome or whole genome (less likely)) to identify mutations

Reportable elements of the test results typically include:
* Test type (see list of common tests above)
* Date/Time of the test
* Normal/abnormal flag
* Narrative result
* Raw data such as DNA sequence or images are rarely exchanged

Additional potential elements may include:
* Specimen type
* Testing facility
* Discrete sequencing results (discrete variant, gene, reference sequence, change type, etc)