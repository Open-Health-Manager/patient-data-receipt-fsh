// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PdrAppointmentReminder
Parent: Appointment
Title: "Appointment"
Description: "Data receipt for a scheduled appointment.  Analogous to an appointment reminder business card."
* participant.actor 1..1 MS 
