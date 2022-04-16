Instance: Procedure-CTScan
InstanceOf: Procedure
Description: "Jane Smith - CT Head and Abdomen"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* status = #completed
* code[0] = http://snomed.org/#ct-head "CT Head"
* subject.display = "Jane Smith"
* subject.reference = "Patient/janesmith"
// * vaccineCode.coding[+] = http://hl7.org/fhir/sid/ndc#49281-0623-78 "FLUZONE QUADRIVALENT"
// * patient = Reference(Patient/john-smith) "John Smith"
// * occurrenceDateTime = "2016-01-08"
// * primarySource = false