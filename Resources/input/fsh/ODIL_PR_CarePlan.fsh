// Alias-Definitionen
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $icd10 = http://fhir.de/CodeSystem/bfarm/icd-10-gm

// Extensions
Extension: Einschraenkungen
Id: einschraenkungen
Title: "Einschränkungen"
Description: "Einschränkungen, die häusliche Krankenpflege erforderlich machen"
* value[x] only string

Extension: Erstverordnung
Id: erstverordnung
Title: "Erstverordnung"
Description: "Kennzeichnung für Erstverordnung"
* value[x] only boolean

Extension: Folgeverordnung
Id: folgeverordnung
Title: "Folgeverordnung"
Description: "Kennzeichnung für Folgeverordnung"
* value[x] only boolean

Extension: Unfall
Id: unfall
Title: "Unfall"
Description: "Kennzeichnung für Unfall"
* value[x] only boolean

Extension: SER
Id: ser
Title: "SER"
Description: "Kennzeichnung für SER"
* value[x] only boolean

// Profil für die Verordnung häuslicher Krankenpflege
Profile: ODIL_CarePlan
Parent: CarePlan
Id: odil-careplan
Title: "ODIL CarePlan"
Description: "Dieses Profil repräsentiert die Verordnung häuslicher Krankenpflege basierend auf dem Muster 12."

* status MS
* intent MS
* subject only Reference(Patient)
* period 1..1 MS
* created 1..1 MS
* author only Reference(Practitioner)
* careTeam only Reference(CareTeam)
* addresses 1..* MS
* addresses only Reference(Condition)
* activity 1..* MS
* activity.detail 1..1 MS
* activity.detail.kind = #ServiceRequest
* activity.detail.code 1..1 MS
* activity.detail.code from HKPMassnahmen (required)
* activity.detail.status 1..1 MS
* activity.detail.performer only Reference(Organization or CareTeam)
* extension contains
    Einschraenkungen named einschraenkungen 0..1 MS and
    Erstverordnung named erstverordnung 0..1 MS and
    Folgeverordnung named folgeverordnung 0..1 MS and
    Unfall named unfall 0..1 MS and
    SER named ser 0..1 MS

// ValueSet für HKP-Maßnahmen
ValueSet: HKPMassnahmen
Id: hkp-massnahmen
Title: "HKP-Maßnahmen"
Description: "ValueSet für Maßnahmen der häuslichen Krankenpflege"
* $sct#385763009 "Behandlungspflege"
* $sct#78680009 "Grundpflege"
* $sct#22510005 "Hauswirtschaftliche Versorgung"
* $sct#18629005 "Medikamentengabe"
* $sct#33747003 "Blutzuckermessung"
* $sct#225358003 "Kompressionsbehandlung"
* $sct#385949008 "Wundversorgung"

// Extensions für spezifische Aktivitäten
Extension: MedikamentengabeDetails
Id: medikamentengabe-details
Title: "Details zur Medikamentengabe"
* extension contains
    productCodeableConcept 0..* and
    dailyAmount 0..1 and
    quantity 0..1
* extension[productCodeableConcept].value[x] only CodeableConcept
* extension[dailyAmount].value[x] only Quantity
* extension[quantity].value[x] only Quantity

Extension: BlutzuckermessungDetails
Id: blutzuckermessung-details
Title: "Details zur Blutzuckermessung"
* extension contains
    scheduledTiming 0..1
* extension[scheduledTiming].value[x] only Timing

Extension: KompressionsbehandlungDetails
Id: kompressionsbehandlung-details
Title: "Details zur Kompressionsbehandlung"
* extension contains
    scheduledTiming 0..1
* extension[scheduledTiming].value[x] only Timing

Extension: WundversorgungDetails
Id: wundversorgung-details
Title: "Details zur Wundversorgung"
* extension contains
    scheduledTiming 0..1 and
    location 0..1
* extension[scheduledTiming].value[x] only Timing
* extension[location].value[x] only string

Extension: SonstigeMassnahmenDetails
Id: sonstige-massnahmen-details
Title: "Details zu sonstigen Maßnahmen"
* extension contains
    scheduledTiming 0..1
* extension[scheduledTiming].value[x] only Timing

