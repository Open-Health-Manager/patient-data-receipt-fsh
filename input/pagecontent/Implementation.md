This page lays out ways that organizations can deliver health data to an individual's designee. Each implementation provides at minimum ways to communicate:
1. The account username of the target individual
2. The source organization
3. The data payload

Currently, there is are two options, through [FHIR Messaging](https://www.hl7.org/fhir/messaging.html) and [FHIR RESTful protocols](https://www.hl7.org/fhir/http.html). Other options are planned and may augment or replace these options as this IG evolves.

### Via FHIR Messaging

Organizations may combine a batch of data collected on a patient into a single collection to be provided to the patient's health manager as a FHIR Message.

Organizations must collect
- a FHIR base server URL 
- the individual's account username on that FHIR server

To implement via [FHIR Messaging](https://www.hl7.org/fhir/messaging.html), collecting organization SHALL send all data collected in a timely manner to the [`$process-message`](https://www.hl7.org/fhir/messageheader-operation-process-message.html) operation within the individual's designated destination endpoint. The MessageHeader of the provided bundle SHALL include
- the patient data receipt event uri (`urn:mitre:healthmanager:pdr`)
- the individual's designated account username in the account extension (`https://github.com/Open-Health-Manager/patient-data-receipt-ig/StructureDefinition/AccountExtension`).
- the source organization identification in the source subfields

The rest of the instances in the bundle SHALL conform to the Standard Patient Health Record IG, communicating at minimum the specific FHIR profile(s) that each resource conforms to in meta.profile.

### Via FHIR RESTful updates

Organizations may write data to the health manager using the create (type level) and update (instance) level interactions in the [FHIR RESTful protocols](https://www.hl7.org/fhir/http.html) either individually or as part of a transaction (system) interaction.

Organizations must collect
- a FHIR base server URL 
- the individual's account username on that FHIR server

To implement via [FHIR RESTful protocols](https://www.hl7.org/fhir/http.html), collecting organization SHALL write all data collected in a timely manner via resource-level updates, type-level creates, or system-level transactions that contains a set of resource-level updates and type-level creates. Each interaction SHALL include
- the individual's designated account username in `meta.extension(url=https://github.com/Open-Health-Manager/patient-data-receipt-ig/StructureDefinition/AccountExtension`)
- the source organization in meta.source
- the specific profile used to represent the data in meta.profile