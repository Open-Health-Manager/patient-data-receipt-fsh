
Profile: PatientDataReceiptHeader
Parent: MessageHeader
Title: "PDR Header"
Description: "Message Header for a Patient Data Receipt."
* event[x] only uri
* eventUri = "urn:mitre:healthmanager:pdr" 
* eventUri MS
* extension contains AccountExtension named account 1..1 MS

Instance: PDR-MessageHeader-1
InstanceOf: PatientDataReceiptHeader
Description: "An example patient data receipt message header"
* eventUri = "urn:mitre:healthmanager:pdr"
* source.endpoint = "http://example.org/"
* extension[AccountExtension].valueString = "exampleDemo"
