The Patient Data Receipt Implementation Guide describes how organizations can provide collected health data to a health manager application that the individual has designated.

### Introduction

As individuals, we are each responsible for engaging in our health and working with ourselves, our families, our communities, and health care organization to get the care we need. Receiving appropriate care from all parties requires context and the details about your health. Learning and understanding that context requires data and that data should travel with you and be accessible with your permission to those who provide your care. In order for your data to travel with you, people, devices, and organizations must provide data that they have collected to you in a standardized format, allowing you and your designated health manager to incorporate it and make it available to others assisting in your care.

### Use Case

John Smith signs up for an online service called a Health Manager that promises to help him with his health and healthcare by tying together his health data in one place and giving him control over it, including the ability to correct, enrich, and share it. Upon signing up, Health Manager informs John that organization that collect his health data are required to make it available to him and that he can designate Health Manager as the recipient and custodian of his health data. John starts with his smart phone, which tracks some health data such as a activity and how much he uses his phone. The next time he visits his PCP, John asks about making this designation and successfully records Health Manager as the destination for data collected by his PCP. He gradually discovers other apps, services, and organizations that he interacts with are able to sent his data to his Health Manager and he signs as many of them up as he can.

In response, data starts flowing into his Health Manager. His smart phone provides a daily summary of his per-app usage of his phone and other movement data. Each time he sees his doctor or gets a test result, that information flows into his Health Manager as soon as it gets recorded. Other organizations provide additional detail, helping to build a detailed record of John's health all under his control and for his use.

### Principles

The following principles must be true of how Patient Data Receipts operate

1. **Completeness**: the data communicated within Patient Data Receipts must be the complete set of health information recorded about the individual
2. **Notification**: when new data is collected, the individual or their designee must be notified of the data availability and provided access to that data
3. **Timeliness**: collected information must be made available to the individual within a reasonable time period, the sooner the better
4. **Trust**: for sensitive or authoritative information, their must be a mechanism for those who the individual provides access to validate that the data was provided by a particular source

### Coverage

This IG details two main components of the use case workflow
1. Designation by the individual of a target for the capture of their health data, including what information the organization must collect and how they will use it to establish connectivity.
2. Delivery of the data to the individual's designee, including the invocation required to effect the delivery.

This IG does not specify the details of the encoding of the data and what specific data is in scope. Instead, it relies on the Standard Personal Health Record IG to detail content requirements.

### Audience/Expected Users

The audience for this IG is the set of organizations that collect data on an individual that is relevant to their health. If and when organizations are required to provide this information to the individual or their designee, this IG will provide details on how they can accomplish this using FHIR.