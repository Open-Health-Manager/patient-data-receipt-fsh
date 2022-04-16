Instance: DiagnosticReport-CtScan
InstanceOf: DiagnosticReport
Description: "Jane Smith - Diagnostic Report for CT Scan"
Usage: #example
// * code[0] =  http://snomed.info/sct#385494008 "Hematoma (disorder)"
* subject.display = "Jane Smith"
* subject.reference = "Patient/janesmith"
* status = #final
* code = http://loinc.org#85430-7 "Diagnostic imaging report"  