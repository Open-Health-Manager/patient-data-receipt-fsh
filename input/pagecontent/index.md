The Patient Data Receipt Implementation Guide describes how organizations can provide collected health data in Standard Patient Health Record format to a health manager application that the individual has designated.

### Introduction

As individuals, we are each responsible for engaging in our health and working with ourselves, our families, our communities, and health care organization to get the care we need. Receiving appropriate care from all parties requires context and the details about your health. Learning and understanding that context requires data and that data should travel with you and be accessible with your permission to those who provide your care. In order for your data to travel with you, people, devices, and organizations must provide data that they have collected to you in a standardized format, allowing you and your designated health manager to incorporate it and make it available to others assisting in your care.


### Principles

The following principles must be true of how Patient Data Receipts operate

1. **Completeness**: the data communicated within Patient Data Receipts must be the complete set of health information recorded about the individual
2. **Attribution**: the source of the information communicated must be included
3. **Notification**: when new data is collected, the individual or their designee must be notified of the data availability and provided access to that data
4. **Timeliness**: collected information must be made available to the individual within a reasonable time period, the sooner the better
5. **Trust**: for sensitive or authoritative information, their must be a mechanism for those who the individual provides access to validate that the data was provided by a particular source

### Coverage

This IG details two main components of the use case workflow
1. Designation by the individual of a target for the capture of their health data, including what information the organization must collect and how they will use it to establish connectivity.
2. Delivery of the data to the individual's designee, including the invocation required to effect the delivery.

This IG does not specify the details of the encoding of the data and what specific data is in scope. Instead, it relies on the Standard Patient Health Record IG to detail content requirements.

### Audience/Expected Users

The audience for this IG is the set of organizations that collect data on an individual that is relevant to their health. If and when organizations are required to provide this information to the individual or their designee, this IG will provide details on how they can accomplish this using FHIR.\


#### References  

- [Argonaut Scheduling](http://fhir.org/guides/argonaut/scheduling/)  
- [SMART Health Links](https://hackmd.io/kvyVFD5cQK2Bg1_vnXSh_Q)  
- [SMART Health Card](https://smarthealth.cards/en/)  