
Extension: AccountExtension
Title: "Account Extension"
Description: "Support specification of the target account for a patient data receipt message"
* ^context.type = #element
* ^context.expression = "MessageHeader"
* value[x] only string
* valueString 1..1
