# Reporting Contexts
Providers reporting to birth defect registries may be a variety of different healthcare contexts including ambulatory, outpatient and hospital settings. While the core data elements relating to the birth defect diagnoses report is substantially similar regardless of the submitter's context, when the report is generated as part of the delivery encounter at a birthing facility the expectations for data relating to the pregnancy and delivery encounter may be higher. This specification will call out data elements where additional constrains and expectations are required of a report from a birthing facility.

# Actors
The primary actors in the provider reporting use case are:
* **Healthcare Provider EHR System**  - An electronic health record with the capability to capture and transform birth defect report information in accordance with the Public Health Jurisdiction requirements for Healthcare Provider Reporting to the Birth Defect Registry System. 
* **Public Health Agency Birth Defect Registry System** - A system collecting electronic birth defect case information. 

# Use Case Details
The Healthcare Provider Use Case is initiated every time an encounter diagnosis is a birth defect (**To Do**: We need to clarify if this means that updates are expected beyond the initial report).  If multiple reportable diagnoses are associated with the encounter, they should be combined into a single report. The following is the sequence of events associated with this Use Case.
1. The Healthcare Provider EHR System captures and stores birth defect report information.
2. The  Healthcare Provider EHR System generates an electronic birth defect report in accordance with this Implementation Guide.
3. The Healthcare Provider EHR System transmitts the report in a secured channel established between the Healthcare Provider EHR and the Public Health Agency Birth Defect Registry system.
4. The Healthcare Provider EHR System may choose to create a log of its data transactions for audit purposes. 
5. The Public Health Agency Birth Defect Registry System acts upon the Public Health Agency's behalf performing translation and validation operations and transforms the report into the birth defect registry system format.
6. The Public Health Agency Birth Defect Registry System may choose to create a log of its data transactions for audit and provenance purposes. 

# Assumptions
The following basic assumptions apply regardless of the reporting context:
* Business, legal and Health Insurance Portability and Accountability Act (HIPAA) policy, procedures and agreements are in place. 
* Reportable birth defect case information has been captured and stored in the EHR using the data elements and vocabulary standards compatible with this implementation guide. 
* The EHR has the capability to create an electronic report (FHIR resources) in conformance with the structure and content standards specified in this implementation guide. 
* The EHR has the capability to transmit the generated report, using the appropriate transport method(s) and network(s). 

# Guidance for When There is no Subject Record
TBD - what are the implications of reporting on stillborns, miscarriages and elective terminations when there may be no Subject (Patient) record? Is a Mother (Patient) record with data relating to her sufficient? The Condition resource does require a .subject pointing to a Patient record. Or is the Subject (Patient) record just a bare minimum of data? This could have implications for things like the date of birth.

# Guidance for Reporting Genetic Testing
A subset of genetic tests may be important in include in birth defect reports. Genetic test results may be reported using the US Core DiagnosticReport profile. The scope of tests may vary by jurisdiction but could include test types such as:
* Karyotype - The process of pairing and ordering all the chromosomes of an organism, providing a genome-wide snapshot of an individual's chromosomes
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