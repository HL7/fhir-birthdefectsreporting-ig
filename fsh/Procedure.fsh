Alias:			ventilation = https://phinvads.cdc.gov/vads/ViewValueSet.action?id=3DBDA20B-9C63-E411-A174-0017A477041A
Alias:			ventilation6 = https://phinvads.cdc.gov/vads/ViewValueSet.action?id=5D073DA7-9C63-E411-A174-0017A477041A

Profile:        BDRNewbornProcedure
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id:             bdr-newbornprocedure
Title:          "BDR Newborn Procedure"
Description:    "A report of a procedure performed the report subject"
* code from ProcedureList (extensible)
* subject only Reference(BDRPatient)




ValueSet:		ProcedureList
Id:				bdr-procedurelist
Title:			"Newborn Procedure List"
Description:	"Procedures performed on the birth defect subject"
* SCT#312948004 "Karyotype determination (procedure)"
* SCT#444309000 "Determination of karyotype from blood specimen (procedure)"
* SCT#434701000124101 "Surfactant replacement therapy"
* ventilation#PHC1250 "Assisted ventilation required immediately following delivery"
* ventilation6#PHC1251 "Assisted ventilation required for more than six hours"
