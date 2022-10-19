Profile: PatientDataReceiptBundle
Parent: Bundle
Title: "PDR Bundle"
Description: "Data receipt payload structure containing a Bundle resource, with included data sources."
* type = #message

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.resolve()"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false   // can be omitted, since false is the default
* entry ^slicing.description = "Slice based on the entry.resource pattern"

* entry contains 
    messageHeader 1..1 MS and
    otherResources 0..* 

* entry[messageHeader].resource only MessageHeader
* entry[messageHeader].resource 1..1 MS

//////////////////////////////////////////////////////////////
    
Profile: PatientDataReceiptBundleDehydratedBundle
Parent: Bundle
Title: "PDR Dehydrated Bundle"
Description: "Data receipt payload structure containing a dehydrated Bundle resource, with links to external data sources."
* type = #message

* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.resolve()"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false   // can be omitted, since false is the default
* entry ^slicing.description = "Slice based on the entry.resource pattern"

* entry contains 
    messageHeader 1..1 MS and
    primaryPatientResource 0..* MS and
    tableOfContents 1..1 MS and
    calendarAppointment 0..* and
    vaccineCards 0..* and
    financialReceipts 0..* and
    otherResources 0..* 

* entry[messageHeader].resource only MessageHeader
* entry[messageHeader].resource 1..1 MS
* entry[primaryPatientResource].resource only Patient
* entry[primaryPatientResource].resource 0..1 MS
* entry[primaryPatientResource].fullUrl 0..1 MS
* entry[tableOfContents].resource only DocumentManifest
* entry[tableOfContents].resource 1..1 MS
* entry[tableOfContents].fullUrl 1..1 MS
* entry[calendarAppointment].resource only Appointment
* entry[calendarAppointment].resource 0..0 MS
* entry[calendarAppointment].fullUrl 1..1 MS
* entry[vaccineCards].resource only Immunization
* entry[vaccineCards].resource 0..0 MS
* entry[vaccineCards].fullUrl 1..1 MS
* entry[financialReceipts].resource only Claim
* entry[financialReceipts].resource 0..0 MS
* entry[financialReceipts].fullUrl 1..1 MS
* entry[otherResources].resource 0..0 MS
* entry[otherResources].fullUrl 1..1 MS

//////////////////////////////////////////////////////////////

Instance: PatientDataReceiptBundleExample
InstanceOf: PatientDataReceiptBundle
Description: "An example patient data receipt bundle"
* id = "pdr-bundle-example"
* entry[messageHeader].resource = Receipt-notification-header
* entry[1].resource = Condition-Hematoma