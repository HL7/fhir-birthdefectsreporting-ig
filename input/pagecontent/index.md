### Overview

### Background

Regional, state and territorial public health population-based birth defect registries collect, manage, and analyze data about birth defect cases. Many birth defect surveillance programs have instituted mandatory reporting requirements in an effort to receive accurate and complete information about the suspected or diagnosed condition. However, in the absence of widely adopted interoperability standards in this domain, reporting complete and accurate information to public health registries has been time consuming, slow and subject to error and other difficulties. This leads to missed cases and undercounting of many conditions. Incomplete reporting of birth defect conditions can slow down progress in measuring the prevalence and impact of these conditions, complicate finding the underlying etiology and delay the development of primary and secondary prevention and intervention strategies.

This Implementation Guide contains the necessary specifications, profiles and value sets for the implementation of standardized data transmissions using the HL7 FHIR standard. A standardized method will allow more efficient and accurate transmission of birth defects information while reducing the burden on providers, implementers/developers and public health programs.
This specification aims to harmonize with other HL7 products including FHIR US Core profiles, the Vital Records Domain Analysis Model and the existing CDA Birth Defect Reporting implementation guide as well as content produced by other organizations such as the Surveillance Guidelines from the National Birth Defect Prevention Network. 

### Related Documents

HL7 has previous published a [CDA Implementation Guide for birth defect reporting](http://www.hl7.org/implement/standards/product_brief.cfm?product_id=428). While the content of this document varies slightly from the CDA IG, the core data content of both documents is described in the HL7 Vital Records Domain Analysis Model (DAM) - See details in the HL7 published [Birth Defects Reporting Domain Analysis Model (BDR DAM)](https://www.hl7.org/implement/standards/product_brief.cfm?product_id=559)

Many of the data elements described in this document overlap with elements critical to birth and fetal death reporting as described in the [Birth And Fetal Death (BFDR) FHIR Implementation Guide](http://hl7.org/fhir/us/bfdr). The project teams for both Birth Defect Reporting and Birth and Fetal Death Reporting have coordinated activities to ensure reusable profiles have been used where possible resulting in the development of the [Vital Records Common Library](http://hl7.org/fhir/us/vr-common-library). Many of the profiles used by this implementation guide originate in the common profile library.

### Dependencies

This implementation guide re-uses and further constrains profiles from the following guides:
* [US Core Implementation Guide, STU5.0.1](http://hl7.org/fhir/us/core/STU5.0.1/)
* [Vital Records Common Library](http://hl7.org/fhir/us/vr-common-library)
* [Birth And Fetal Death (BFDR) FHIR Implementation Guide](http://hl7.org/fhir/us/bfdr)

### How to Read This Guide

This Guide is divided into several pages with descriptions as follows:

* [Home](index.html): provides an overview and background for this IG
* [Scope](scope_of_the_bdr_fhir_ig.html): provides scope of this IG including snapshot of birth defects reporting data elements, and data elements mapping table.
* [Usage](usage.html): provides example of use cases for this IG.
* [Change Log](change_log.html): provides a change history
* [Artifacts](artifacts.html): provides a list of the FHIR artifacts (profiles, examples, extensions, and value sets) defined as part of this guide.
* [Downloads](downloads.html): provides links to downloadable artifacts.

### Authors

<table>
<thead>
<tr>
<th>Name</th>
<th>Email/URL</th>
</tr>
</thead>
<tbody>
<tr>
<td>HL7 International - Public Health</td>
<td><a href="http://www.hl7.org/Special/committees/pher" target="_new">http://www.hl7.org/Special/committees/pher</a></td>
</tr>
<tr>
<td>Thanh Cheng, Altarum</td>
<td><a href="mailto:thanh.cheng@altarum.org">thanh.cheng@altarum.org</a></td>
</tr>
</tbody>
</table>

### Acknowledegments

The authors of this implementation guide would like to acknowledge the work effort put forward by project teams for the standards mentioned above without which this specification would not be possible. In particular, many thanks to the many birth defect registry programs, specifically the MI Birth Defects Registry team who contributed time and expertise to identify the data elements critical to report.

