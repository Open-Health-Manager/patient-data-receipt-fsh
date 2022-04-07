## Patient Data Receipt

This repository contains source code for building the Patient Data Receipt IG.

#### Installation  

```bash
# clone the repository
git clone https://github.com/Open-Health-Manager/patient-data-receipt-fsh

cd patient-data-receipt-fsh

# update the publisher dependences
./_updatePublisher.sh    

# build the implementation guide
./_genonce.sh         

# view the index page
open output/index.html
```

#### Use Cases  

- Push Notifications (Patient, DocumentManifest)
- Over the Counter Medications (FinancialReceipt)
- Immunication Records (VaccinationCard)
- Restaurants & General Commerce (FinancialReceipt)
- Patient Intake (Patient)
- Specialist Consultation (DehydratedBundle)


#### Transport Mechanism  

- PUT/POST HTTP Messages
- Dynamic URLs (i.e. TinyUrl)
- QR Codes  
- Bluetooth AirDrop  
- NFC & RFID 

