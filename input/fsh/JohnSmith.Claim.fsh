

Instance: Receipt-Purchase
InstanceOf: Claim
Description: "John Smith - Over the counter (OTC) purchase receipt for bottle of Zyrtec antihistamine."
Usage: #example
* meta.versionId = "1"
* meta.lastUpdated = "2018-10-04T19:42:52.061-04:00"
* status = #active
* use = #claim
* created = "2018-10-04"
* priority = http://terminology.hl7.org/CodeSystem/processpriority#normal "Normal"
* type = http://terminology.hl7.org/CodeSystem/claim-type#over-the-counter "Over The Counter"
* patient = Reference(Patient/john-smith) "John Smith"
* provider = Reference(Patient/acme-pharmacy) "ACME Pharmacy"
* insurance[0].sequence = 1
* insurance[0].focal = false
* insurance[0].coverage = Reference(Coverage/self-pay) "Self-pay"
* item[0].servicedDate = "2018-10-04"
* item[0].sequence = 1
* item[0].productOrService = http://terminology.hl7.org/CodeSystem/ex-USCLS#99555 "Expense"
* item[0].quantity.value = 1
* item[0].unitPrice.value = 12.95
* item[0].unitPrice.currency = #USD
* item[0].net.value = 13.65
* item[0].net.currency = #USD
* supportingInfo[0].sequence = 1
* supportingInfo[0].category = http://terminology.hl7.org/CodeSystem/ex-benefitcategory#1 "Medical Care"
* supportingInfo[0].valueReference = Reference(Medication/zyrtec) "Zyrtec"
* total.value = 13.65
* total.currency = #USD


// * item[+].serviceDate = http://hl7.org/fhir/sid/ndc#49281-0623-78 "FLUZONE QUADRIVALENT"
// * occurrenceDateTime = "2016-01-08"d
// * primarySource = false


