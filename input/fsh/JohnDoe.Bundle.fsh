

Instance: PDR-johndoe-datareceipt
InstanceOf: Bundle
Description: "John Doe - Bundle - DataReceipt"
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* type = #datareceipt
* entry[0].fullUrl = "http://localhost:3000/baseR4/Claim/claim-johndoe-zyrtec"
* entry[0].resource.resourceType = "DocumentManifest"
* entry[0].resource.content[0] = Reference(Claim/claim-johndoe-zyrtec) "Purchase receipt for Zyrtec"
* entry[0].resource.content[+] = Reference(Medication/zyrtec) "Zyrtec"

