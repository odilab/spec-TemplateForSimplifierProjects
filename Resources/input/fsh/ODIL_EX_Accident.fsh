Extension: Unfallinformation
Id: Unfallinformation
Title: "Unfallinformation"
Context: DeviceRequest
Description: "Abbildung der Unfallinformationen zu einer Verordnung"
* extension contains 
    Unfallkennzeichen 0..1 and 
    Unfallbetrieb 0..1 and 
    Unfalltag 0..1

* extension[Unfallkennzeichen].value[x] only Coding
* extension[Unfallkennzeichen].value[x] from https://fhir.kbv.de/ValueSet/KBV_VS_ERP_Accident_Type
* extension[Unfallbetrieb].value[x] only string
* extension[Unfalltag].value[x] only date

//* value[x] 0..0

// Extension: Unfallkennzeichen
// Id: Unfallkennzeichen
// Title: "Unfallkennzeichen"
// Context: Unfallinformation
// * value[x] only Coding

// Extension: Unfallbetrieb
// Id: Unfallbetrieb
// Title: "Unfallbetrieb"
// Context: Unfallinformation
// * value[x] only string

// Extension: Unfalltag
// Id: Unfalltag
// Title: "Unfalltag"
// Context: Unfallinformation
// * value[x] only date

// Extension: Unfallinformation
// Id: Unfallinformation
// Title: "Unfallinformation"
// Context: DeviceRequest
// Description: "Enthält Informationen zu einem Unfall, einschließlich Unfallkennzeichen, Unfallbetrieb und Unfalltag."
// * value[x] ^slicing.discriminator.type = #type
// * value[x] ^slicing.discriminator.path = "value"
// * value[x] ^slicing.rules = #open
// * value[x] ^slicing.ordered = false

// * value[x] contains Unfallkennzeichen 0..1 and Unfallbetrieb 0..1 and Unfalltag 0..1
// * value[x][Unfallkennzeichen] only Coding
// * value[x][Unfallbetrieb] only string
// * value[x][Unfalltag] only date