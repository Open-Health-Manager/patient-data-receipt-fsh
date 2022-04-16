// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.



Instance: JohnSmith
InstanceOf: Patient
Title: "Patient - John Smith"
Description: "Patient - John Smith"
* id = "johnsmith"
* name
  * given[0] = "John"
  * family = "Smith"


Instance: JaneSmith
InstanceOf: Patient
Title: "Patient - Jane Smith"
Description: "Patient - Jane Smith"
* id = "janesmith"
* name
  * given[0] = "Jane"
  * family = "Smith"

