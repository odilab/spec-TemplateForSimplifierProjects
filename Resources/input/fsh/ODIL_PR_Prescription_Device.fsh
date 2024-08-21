Alias: $KBV_EX_ERP_BVG = https://fhir.kbv.de/StructureDefinition/KBV_EX_ERP_BVG

Profile: PrescriptionDevice
Parent: DeviceRequest
Id: PrescriptionDevice
Title: "PrescriptionDevice"
Description: "Ein Rezept für eine Hilfsmit."

* id 1..1
* meta 1..1
* meta.profile 1..1

* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* language ..0
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* priorRequest ..0
* groupIdentifier ..0
* status 1..
* status = #active (exactly)
* intent = #order (exactly)
* priority ..0
* code[x] only CodeableConcept
* codeCodeableConcept.coding.system = "http://fhir.de/sid/gkv/hmnr" (exactly)
* parameter.id ..0
* parameter.code.id ..0
* parameter.code.coding ..1
* parameter.code.coding.system 1..
* parameter.code.coding.version ..0
* parameter.code.coding.code 1..
* parameter.code.coding.userSelected ..0
* parameter.code.text ..1
* subject only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Patient|1.1.0)
* encounter ..0
* authoredOn 1..
* authoredOn ^short = "Ausstellungsdatum"
* authoredOn ^definition = "Ausstellungsdatum der Verordnung"
* requester 1..
* requester only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.1.0)
* performerType ..0
* performer ..0
* reasonCode ^short = "Diagnose (ICD)"
* reasonCode ^definition = "Abbildung der Diagnose für die Verordnung"
* reasonCode ..1
* reasonCode from http://fhir.odilab.de/ValueSet/valueSet-icd-10-gm
* reasonReference ..0
* insurance 1..1
* insurance only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Coverage|1.1.0)
* occurrence[x] ^short = "Verordnungszeitraum"
* occurrence[x] ^definition = "Zeitraum, in dem die Verordnung gültig ist"
* occurrence[x] 0..1
* occurrence[x] only Period
* supportingInfo ..0
* extension contains 
    KBV_EX_FOR_StatusCoPayment named Zuzahlungsstatus 0..1 and
    KBV_EX_ERP_EmergencyServicesFee named Notdienstgebuehr 0..1 and
    KBV_EX_ERP_BVG_ODIL named BVG 1..1 and
    Unfallinformation named Unfallinformationen 0..1 and
    //Diagnose sollte in das Feld reasonCode eingetragen werden
    //Verordnungszeitraum sollte in das Feld occurrence eingetragen werden
    Folgeversorgung named Folgeversorgung 0..*