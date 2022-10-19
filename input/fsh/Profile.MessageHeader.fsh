
Profile: PatientDataReceiptHeader
Parent: MessageHeader
Title: "PDR Message Header"
Description: "Message Header for a Patient Data Receipt."
* event[x] only uri
* eventUri = "urn:mitre:healthmanager:pdr" 
* eventUri MS

* source MS
* source.endpoint MS

* focus ^slicing.discriminator.type = #type
* focus ^slicing.discriminator.path = "resolve()"
* focus ^slicing.rules = #open
* focus ^slicing.ordered = false   // can be omitted, since false is the default
* focus ^slicing.description = "Slice based on the focus.resource pattern"
* focus contains 
    patient 1..1 MS and
    tableOfContents 0..1 MS and
    otherResources 0..* 

Instance: Receipt-notification-header
InstanceOf: PatientDataReceiptHeader
Description: "An example patient data receipt message header"
* eventUri = "urn:mitre:healthmanager:pdr"
* source.endpoint = "http://example.org/"
* focus.reference = "Patient/janesmith"

Instance: Receipt-notification-header-dehydrated
InstanceOf: PatientDataReceiptHeader
Description: "An example patient data receipt message header"
* eventUri = "urn:mitre:healthmanager:pdr"
* source.endpoint = "http://example.org/"
* focus[0].reference = "Patient/janesmith"
* focus[1].display = "Table of Contents"
* focus[1].reference = "DocumentManifest/1235"