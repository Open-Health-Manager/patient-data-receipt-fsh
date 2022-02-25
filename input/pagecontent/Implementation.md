This page lays out ways that organizations can deliver health data to an individual's designee. Currently, there is only one way, which is through [FHIR Messaging](https://www.hl7.org/fhir/messaging.html), though other possible approaches are planned.

### Via FHIR Messaging

Organizations must collect
- a FHIR base server URL 
- the individual's account name on that FHIR server

To implement via [FHIR Messaging](https://www.hl7.org/fhir/messaging.html), collecting organization SHALL send all data collected in a timely manner to the [`$process-message`](https://www.hl7.org/fhir/messageheader-operation-process-message.html) operation within the individual's designated destination endpoint. The operation SHALL be invoked asynchronously (http://server/base/$process-message?async=true). The MessageHeader of the provided bundle SHALL include
- the patient data receipt event uri (`urn:mitre:healthmanager:pdr`)
- the individual's designated account in the account extension.

The rest of the contents of the bundle SHALL conform to the Standard Personal Health Record IG.