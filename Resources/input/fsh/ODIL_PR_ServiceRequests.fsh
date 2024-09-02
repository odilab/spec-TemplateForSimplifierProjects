Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $ucum = http://unitsofmeasure.org

Profile: ODIL_BaseServiceRequest
Parent: ServiceRequest
Id: odil-base-service-request
Title: "ODIL Base ServiceRequest"
Description: "Basis-Profil für alle ServiceRequests in der häuslichen Krankenpflege"
* status 1..1 MS
* intent 1..1 MS
* category 1..1 MS
* category = $sct#385763009 "Behandlungspflege"
* subject only Reference(Patient)
* requester only Reference(Practitioner)
* performer only Reference(Organization or CareTeam)
* occurrence[x] only Timing
* occurrence[x] 1..1 MS
* occurrenceTiming.repeat.boundsPeriod 1..1 MS
* occurrenceTiming.repeat.frequency 1..1 MS
* occurrenceTiming.repeat.period 1..1 MS
* occurrenceTiming.repeat.periodUnit 1..1 MS
* extension contains
    DauerAbweichung named dauerAbweichung 0..1 MS

Extension: DauerAbweichung
Id: dauer-abweichung
Title: "Dauer bei Abweichung"
Description: "Abweichende Dauer für eine spezifische Maßnahme"
* value[x] only Period

Profile: ODIL_MedikamentengabeServiceRequest
Parent: ODIL_BaseServiceRequest
Id: odil-medikamentengabe-service-request
Title: "ODIL Medikamentengabe ServiceRequest"
Description: "ServiceRequest für Medikamentengabe in der häuslichen Krankenpflege"
* code = $sct#18629005 "Medikamentengabe"
* extension contains
    MedikationDetails named medikationDetails 1..1 MS and
    MedikamentenboxHerrichtung named medikamentenboxHerrichtung 0..1 MS

Extension: MedikationDetails
Id: medikation-details
Title: "Details zur Medikation"
Description: "Detaillierte Informationen zur Medikation und Dosierung"
* extension contains
    medikament 1..1 MS and
    dosierung 1..1 MS and
    verabreichungsweg 1..1 MS
* extension[medikament].value[x] only CodeableConcept
* extension[dosierung].value[x] only Dosage
* extension[verabreichungsweg].value[x] only CodeableConcept

Extension: MedikamentenboxHerrichtung
Id: medikamentenbox-herrichtung
Title: "Herrichtung der Medikamentenbox"
Description: "Angabe, ob die Medikamentenbox hergerichtet werden soll"
* value[x] only boolean

Profile: ODIL_BlutzuckermessungServiceRequest
Parent: ODIL_BaseServiceRequest
Id: odil-blutzuckermessung-service-request
Title: "ODIL Blutzuckermessung ServiceRequest"
Description: "ServiceRequest für Blutzuckermessung in der häuslichen Krankenpflege"
* code = $sct#33747003 "Blutzuckermessung"
* extension contains
    ErstOderNeueinstellung named erstOderNeueinstellung 0..1 MS and
    IntensiviertInsulin named intensiviertInsulin 0..1 MS

Extension: ErstOderNeueinstellung
Id: erst-oder-neueinstellung
Title: "Erst- oder Neueinstellung"
Description: "Kennzeichnung für Erst- oder Neueinstellung (max. 4 Wochen und max. 3x täglich)"
* value[x] only boolean

Extension: IntensiviertInsulin
Id: intensiviert-insulin
Title: "Bei intensivierter Insulintherapie"
Description: "Kennzeichnung für intensivierte Insulintherapie"
* value[x] only boolean

Profile: ODIL_KompressionsbehandlungServiceRequest
Parent: ODIL_BaseServiceRequest
Id: odil-kompressionsbehandlung-service-request
Title: "ODIL Kompressionsbehandlung ServiceRequest"
Description: "ServiceRequest für Kompressionsbehandlung in der häuslichen Krankenpflege"
* code = $sct#225358003 "Kompressionsbehandlung"
* bodySite 1..1 MS
* extension contains
    KompressionsartDetails named kompressionsartDetails 1..1 MS

Extension: KompressionsartDetails
Id: kompressionsart-details
Title: "Details zur Kompressionsart"
Description: "Spezifische Details zur Art der Kompressionsbehandlung"
* extension contains
    kompressionsstruempfe 0..1 and
    kompressionsverbaende 0..1 and
    stuetzendVerbaende 0..1
* extension[kompressionsstruempfe].value[x] only CodeableConcept
* extension[kompressionsstruempfe].valueCodeableConcept from KompressionsstruempfeActions (required)
* extension[kompressionsverbaende].value[x] only CodeableConcept
* extension[kompressionsverbaende].valueCodeableConcept from KompressionsverbaendeActions (required)
* extension[stuetzendVerbaende].value[x] only string

ValueSet: KompressionsstruempfeActions
Id: kompressionsstruempfe-actions
Title: "Aktionen für Kompressionsstrümpfe"
* $sct#229070002 "Anziehen von Kompressionsstrümpfen"
* $sct#229071003 "Ausziehen von Kompressionsstrümpfen"

ValueSet: KompressionsverbaendeActions
Id: kompressionsverbaende-actions
Title: "Aktionen für Kompressionsverbände"
* $sct#225369006 "Anlegen von Kompressionsverband"
* $sct#225370007 "Abnehmen von Kompressionsverband"

Profile: ODIL_WundversorgungServiceRequest
Parent: ODIL_BaseServiceRequest
Id: odil-wundversorgung-service-request
Title: "ODIL Wundversorgung ServiceRequest"
Description: "ServiceRequest für Wundversorgung in der häuslichen Krankenpflege"
* code = $sct#385949008 "Wundversorgung"
* bodySite 1..1 MS
* extension contains
    WundartDetails named wundartDetails 1..1 MS

Extension: WundartDetails
Id: wundart-details
Title: "Details zur Wundart"
Description: "Spezifische Details zur Art der Wunde und Versorgung"
* extension contains
    wundart 1..1 and
    aktuelleGroesse 0..1 and
    aktuellerGrad 0..1 and
    praeparate 0..1 and
    versorgungsart 1..1
* extension[wundart].value[x] only string
* extension[aktuelleGroesse].value[x] only string
* extension[aktuellerGrad].value[x] only string
* extension[praeparate].value[x] only string
* extension[versorgungsart].value[x] only CodeableConcept
* extension[versorgungsart].valueCodeableConcept from WundversorgungsartVS (required)

ValueSet: WundversorgungsartVS
Id: wundversorgungsart-vs
Title: "Wundversorgungsart"
* $sct#225358003 "Akute Wundversorgung"
* $sct#225360001 "Chronische Wundversorgung"

Profile: ODIL_SonstigeMassnahmenServiceRequest
Parent: ODIL_BaseServiceRequest
Id: odil-sonstige-massnahmen-service-request
Title: "ODIL Sonstige Maßnahmen ServiceRequest"
Description: "ServiceRequest für sonstige Maßnahmen in der häuslichen Krankenpflege"
* code from HKPMassnahmen (required)
* extension contains
    AnleitungDetails named anleitungDetails 0..1 MS

Extension: AnleitungDetails
Id: anleitung-details
Title: "Details zur Anleitung"
Description: "Details zur Anleitung für Patient/Angehörige"
* extension contains
    anleitungsArt 1..1 and
    anzahl 1..1
* extension[anleitungsArt].value[x] only string
* extension[anzahl].value[x] only positiveInt

Profile: ODIL_GrundpflegeHauswirtschaftServiceRequest
Parent: ODIL_BaseServiceRequest
Id: odil-grundpflege-hauswirtschaft-service-request
Title: "ODIL Grundpflege und hauswirtschaftliche Versorgung ServiceRequest"
Description: "ServiceRequest für Grundpflege und hauswirtschaftliche Versorgung in der häuslichen Krankenpflege"
* code from GrundpflegeHauswirtschaftVS (required)
* extension contains
    Unterstuetzungspflege named unterstuetzungspflege 0..1 MS and
    Krankenhausvermeidungspflege named krankenhausvermeidungspflege 0..1 MS and
    GrundpflegeDetails named grundpflegeDetails 0..1 MS and
    HauswirtschaftlicheVersorgungDetails named hauswirtschaftlicheVersorgungDetails 0..1 MS

Extension: Unterstuetzungspflege
Id: unterstuetzungspflege
Title: "Unterstützungspflege"
Description: "Kennzeichnung für Unterstützungspflege nach § 37 (1a) SGB V"
* value[x] only boolean

Extension: Krankenhausvermeidungspflege
Id: krankenhausvermeidungspflege
Title: "Krankenhausvermeidungspflege"
Description: "Kennzeichnung für Krankenhausvermeidungspflege nach § 37 (1) SGB V"
* value[x] only boolean

Extension: GrundpflegeDetails
Id: grundpflege-details
Title: "Details zur Grundpflege"
Description: "Spezifische Details zur Grundpflege"
* value[x] only boolean

Extension: HauswirtschaftlicheVersorgungDetails
Id: hauswirtschaftliche-versorgung-details
Title: "Details zur hauswirtschaftlichen Versorgung"
Description: "Spezifische Details zur hauswirtschaftlichen Versorgung"
* value[x] only boolean

ValueSet: GrundpflegeHauswirtschaftVS
Id: grundpflege-hauswirtschaft-vs
Title: "Grundpflege und hauswirtschaftliche Versorgung"
* $sct#78680009 "Grundpflege"
* $sct#22510005 "Hauswirtschaftliche Versorgung"