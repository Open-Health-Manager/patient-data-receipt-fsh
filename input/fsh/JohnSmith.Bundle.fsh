

Instance: Receipt-Notification-Payload
InstanceOf: Bundle
Description: "John Smith - Data payload of a push notification receipt notifying a patient of new claim registered with their patient portal."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* type = #message
* entry[0].fullUrl = "http://localhost:3000/baseR4/Claim/claim-johnsmith-zyrtec"
* entry[0].resource.resourceType = "DocumentManifest"
* entry[0].resource.content[0] = Reference(Claim/claim-johnsmith-zyrtec) "Purchase receipt for Zyrtec"
* entry[0].resource.content[+] = Reference(Medication/zyrtec) "Zyrtec"

