Instance: Receipt-immunization-record
InstanceOf: Immunization
Description: "John Smith - Immunization record for influenza vaccination."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* status = #completed
* vaccineCode.coding[0] = http://hl7.org/fhir/sid/cvx#158 "influenza, injectable, quadrivalent"
* vaccineCode.coding[+] = http://hl7.org/fhir/sid/ndc#49281-0623-78 "FLUZONE QUADRIVALENT"
* patient = Reference(Patient/john-smith) "John Smith"
* occurrenceDateTime = "2016-01-08"
* primarySource = false