
Profile: PatientDataReceiptHeader
Parent: MessageHeader
Title: "PDR Message Header"
Description: "Message Header for a Patient Data Receipt."
* event[x] only uri
* eventUri = "urn:mitre:healthmanager:pdr" 
* eventUri MS
* extension contains AccountExtension named account 1..1 MS

* focus ^slicing.discriminator.type = #type
* focus ^slicing.discriminator.path = "resolve()"
* focus ^slicing.rules = #open
* focus ^slicing.ordered = false   // can be omitted, since false is the default
* focus ^slicing.description = "Slice based on the focus.resource pattern"
* focus contains 
    tableOfContents 1..1 MS and
    otherResources 0..* 

Instance: Receipt-notification-header
InstanceOf: PatientDataReceiptHeader
Description: "An example patient data receipt message header"
* eventUri = "urn:mitre:healthmanager:pdr"
* source.endpoint = "http://example.org/"
* extension[AccountExtension].valueString = "exampleDemo"
* focus.display = "Table of Contents"
* focus.reference = "DehydratedManifest/1235"