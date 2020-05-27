//Alias:		testList = https://phinvads.cdc.gov/vads/ViewValueSet.action?id=54FCDE19-99B1-E611-95EE-0017A477041A 
//Alias:		USCoreProblem = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition


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
* SCT#434701000124101 "Surfactant replacement therapy "
