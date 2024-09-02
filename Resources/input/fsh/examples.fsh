//Fixed Values müssen nicht eingetragen werden, diese werden automatisch hinzugefügt
Instance: HiMiBundle_e15H
InstanceOf: ODIL_Bundle
Usage: #example
Title: "HiMiBundle"
Description: "Ein Bundle, das eine Verordnung für ein Hörgerät enthält."
* id = "HiMiBundle"
* identifier.value = "162.240.219.130.055.90"
* timestamp = "2021-01-01T00:00:00Z"
* entry[Dokumenteninformation].fullUrl = "Composition/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Dokumenteninformation].resource = CompositionHiMi
* entry[VerordnungHilfsmittel].fullUrl = "PrescriptionDevice/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[VerordnungHilfsmittel].resource = PrescriptionDevice
* entry[Patient].fullUrl = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Patient].resource = Patient_Example
* entry[AusstellendeVerschreibendeVerantwortlichePerson].fullUrl = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[AusstellendeVerschreibendeVerantwortlichePerson].resource = Practitioner_Example
* entry[Einrichtung].fullUrl = "Organization/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Einrichtung].resource = Organization_Example
* entry[Krankenversicherungsverhaeltnis].fullUrl = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Krankenversicherungsverhaeltnis].resource = Coverage_Example

Instance: CompositionHiMi
InstanceOf: ODIL_Composition
Usage: #example
Title: "CompositionHiMi"
Description: "Ein Dokument, das eine Verordnung für ein Hörgerät enthält."
* id = "416b7bc3-7483-46ba-bc67-306bf671c569"
* extension[Rechtsgrundlage].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN"
* extension[Rechtsgrundlage].valueCoding.code = #00
* status = #final
* type.coding.code = #e15H
* subject.reference = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* date = "2021-01-01"
* author[Arzt].reference = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* author[Pruefnummer].identifier.value = "Y/400/2107/36/999"
* custodian.reference = "Organization/416b7bc3-7483-46ba-bc67-306bf671c569"
* section[Verordnung_Hilfsmittel].entry.reference = "DeviceRequest/416b7bc3-7483-46ba-bc67-306bf671c569"
* section[Krankenversicherungsverhaeltnis].entry.reference = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"


Instance: ODIL_Bundle
InstanceOf: ODIL_Bundle
Usage: #example
Title: "ODIL-Bundle"
Description: "Ein Bundle, das eine Verordnung für ein Hörgerät enthält."
* id = "ODIL-Bundle"
* identifier.value = "162.240.219.130.055.90"
* timestamp = "2021-01-01T00:00:00Z"
* entry[Dokumenteninformation].fullUrl = "Composition/Odil-Composition-Himi"
* entry[Dokumenteninformation].resource = Odil-Composition
* entry[VerordnungHilfsmittel].fullUrl = "PrescriptionDevice/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[VerordnungHilfsmittel].resource = PrescriptionDevice
* entry[Patient].fullUrl = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Patient].resource = Patient_Example
* entry[AusstellendeVerschreibendeVerantwortlichePerson].fullUrl = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[AusstellendeVerschreibendeVerantwortlichePerson].resource = Practitioner_Example
* entry[Einrichtung].fullUrl = "Organization/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Einrichtung].resource = Organization_Example
* entry[Krankenversicherungsverhaeltnis].fullUrl = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Krankenversicherungsverhaeltnis].resource = Coverage_Example

Instance: Odil-Composition-Himi
InstanceOf: ODIL_Composition
Usage: #example
Title: "Odil-CompositionHiMi"
Description: "Ein Dokument, das eine Verordnung für ein Hörgerät enthält."
* id = "Odil-Composition"
* extension[Rechtsgrundlage].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN"
* extension[Rechtsgrundlage].valueCoding.code = #00
* status = #final
* type.coding.code = #e15H
* subject.reference = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* date = "2021-01-01"
* author[Arzt].reference = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* author[Pruefnummer].identifier.value = "Y/400/2107/36/999"
* custodian.reference = "Organization/416b7bc3-7483-46ba-bc67-306bf671c569"
* section[Verordnung_Hilfsmittel].entry.reference = "DeviceRequest/416b7bc3-7483-46ba-bc67-306bf671c569"
* section[Krankenversicherungsverhaeltnis].entry.reference = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"




Instance: PrescriptionDevice
InstanceOf: PrescriptionDevice
Usage: #example
Title: "PrescriptionDevice Hörgerät"
Description: "Eine Verordnung für ein Hörgerät."
* id = "416b7bc3-7483-46ba-bc67-306bf671c569"
* extension[Folgeversorgung].valueBoolean = false
* extension[BVG].valueBoolean = false
* reasonCode.coding.system = "http://fhir.odilab.de/CodeSystem/icd-10-gm"
* reasonCode.coding.code = #H91.9
* reasonCode.coding.display = "Hörverlust"
* codeCodeableConcept.coding.display = "Hörhilfe"
* codeCodeableConcept.text = "Hörhilfe"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99915-2
* parameter[=].code.coding.display = "Status Gehörgang Rechts"
* parameter[=].code.text = "Normal"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99916-2
* parameter[=].code.coding.display = "Status Trommelfell Rechts"
* parameter[=].code.text = "Intakt"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99917-2
* parameter[=].code.coding.display = "Hörhilfe notwendig Rechts"
* parameter[=].valueBoolean = false
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99918-2
* parameter[=].code.coding.display = "Hörweite Fl.Spr. Rechts"
* parameter[=].code.text = "4-6 (gering)"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99919-2
* parameter[=].code.coding.display = "Hörweite Um.Spr. Rechts"
* parameter[=].code.text = "4-X (gering)"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99924-2
* parameter[=].code.coding.display = "Tinnitushilfe notwendig Rechts"
* parameter[=].valueBoolean = false
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99915-1
* parameter[=].code.coding.display = "Status Gehörgang Links"
* parameter[=].code.text = "Normal"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99916-1
* parameter[=].code.coding.display = "Status Trommelfell Links"
* parameter[=].code.text = "Intakt"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99917-1
* parameter[=].code.coding.display = "Hörhilfe notwendig Links"
* parameter[=].valueBoolean = false
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99918-1
* parameter[=].code.coding.display = "Hörweite Fl.Spr. Links"
* parameter[=].code.text = "4-6 (gering)"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99919-1
* parameter[=].code.coding.display = "Hörweite Um.Spr. Links"
* parameter[=].code.text = "4-X (gering)"
* parameter[+].code.coding.system = "http://loinc.org"
* parameter[=].code.coding.code = #99924-1
* parameter[=].code.coding.display = "Tinnitushilfe notwendig Links"
* parameter[=].valueBoolean = false
* subject.reference = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* authoredOn = "2021-01-01"
* requester.reference = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* insurance.reference = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"


Instance: Patient_Example
InstanceOf: KBV_PR_FOR_Patient
Usage: #example
Title: "Patient_Example"
Description: "Ein Beispiel für einen Patienten."
* id = "416b7bc3-7483-46ba-bc67-306bf671c569"
* identifier[versichertenId_GKV].value = "X123456789"
* name[name].use = #official
* name[name].family = "Musterfrau"
* name[name].family.extension[nachname].valueString = "Musterfrau"
* name[name].given = "Erika"
* birthDate = "2002-02-02"
* address[Strassenanschrift].type = #both
* address[Strassenanschrift].line = "Musterstrasse 1"
* address[Strassenanschrift].line.extension[Strasse].valueString = "Musterstrasse"
// Das hier zB. ist ein fixed Value
//* address[Strassenanschrift].line.extension[Hausnummer].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "1"
* address[Strassenanschrift].city = "Musterstadt"
* address[Strassenanschrift].postalCode = "12345"
* address[Strassenanschrift].country = "D"

Instance: Practitioner_Example
InstanceOf: KBV-PR-FOR-Practitioner
Usage: #example
Title: "Practitioner_Example"
Description: "Ein Beispiel für einen Arzt."
* id = "416b7bc3-7483-46ba-bc67-306bf671c569"
* identifier[ANR].value = "123456789"
* name[name].family = "Arztmann"
* name[name].family.extension[nachname].valueString = "Arztmann"
* name[name].given = "Albert"
* qualification[Typ].code.coding.code = #00
* qualification[Berufsbezeichnung].code.text = "Arzt"

Instance: Organization_Example
InstanceOf: KBV_PR_FOR_Organization
Usage: #example
Title: "Organization_Example"
Description: "Ein Beispiel für eine Organisation."
* id = "416b7bc3-7483-46ba-bc67-306bf671c569"
* identifier[Betriebsstaettennummer].value = "123456789"
* telecom[telefon].value = "0201-123456789"
* address[Strassenanschrift].line = "Musterstrasse 1"
* address[Strassenanschrift].line.extension[Strasse].valueString = "Musterstrasse"
* address[Strassenanschrift].line.extension[Hausnummer].valueString = "1"
* address[Strassenanschrift].city = "Musterstadt"
* address[Strassenanschrift].postalCode = "12345"
* address[Strassenanschrift].country = "D"

Instance: Coverage_Example
InstanceOf: KBV_PR_FOR_Coverage
Usage: #example
Title: "Coverage_Example"
Description: "Ein Beispiel für ein Krankenversicherungsverhältnis."
* id = "416b7bc3-7483-46ba-bc67-306bf671c569"
* extension[BesonderePersonengruppe].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_PERSONENGRUPPE"
* extension[BesonderePersonengruppe].valueCoding.code = #00
* extension[DMPKennzeichen].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_DMP"
* extension[DMPKennzeichen].valueCoding.code = #00
* extension[Versichertenart].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_VERSICHERTENSTATUS"
* extension[Versichertenart].valueCoding.code = #1
* extension[WOP].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ITA_WOP"
* extension[WOP].valueCoding.code = #00
* type.coding.system = "http://fhir.de/CodeSystem/versicherungsart-de-basis"
* type.coding.code = #GKV
* beneficiary.reference = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* payor.identifier.value = "123456789"
* payor.display = "KN Knappschaft"


Instance: CareTeam_Example
InstanceOf: CareTeam
Usage: #example
Title: "CareTeam_Example"
Description: "Ein Beispiel für ein Pflegeteam."
* id = "beispielPflegeteam"
* status = #active
* name = "Pflegeteam Musterstadt"
* participant[0].role = http://terminology.hl7.org/CodeSystem/participant-role#nurse
* participant[=].member = Reference(Practitioner_Example)


Instance: Odil-Composition-UmfassendesBeispiel
InstanceOf: ODIL_Composition
Usage: #example
Title: "Odil-Composition-UmfassendesBeispiel"
Description: "Ein Dokument, das eine umfassende Verordnung für häusliche Krankenpflege enthält."
* id = "Odil-Composition-UmfassendesBeispiel"
* extension[Rechtsgrundlage].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN"
* extension[Rechtsgrundlage].valueCoding.code = #00
* status = #final
* type.coding.code = #e12H
* subject = Reference(Patient_Example)
* date = "2023-04-25"
* author[Arzt] = Reference(Practitioner_Example)
* author[Pruefnummer].identifier.value = "Y/400/2107/36/999"
* custodian = Reference(Organization_Example)
* section[Verordnung_HaeuslicheKrankenpflege].entry = Reference(UmfassendesBeispielODILCarePlan)
* section[Krankenversicherungsverhaeltnis].entry = Reference(Coverage_Example)

Instance: ODIL_Bundle_UmfassendesBeispiel
InstanceOf: ODIL_Bundle
Usage: #example
Title: "ODIL-Bundle-UmfassendesBeispiel"
Description: "Ein Bundle, das eine umfassende Verordnung für häusliche Krankenpflege enthält."
* id = "ODIL-Bundle-UmfassendesBeispiel"
* identifier.value = "162.240.219.130.055.91"
* timestamp = "2023-04-25T10:00:00Z"
* entry[Dokumenteninformation].fullUrl = "Composition/Odil-Composition-UmfassendesBeispiel"
* entry[Dokumenteninformation].resource = Odil-Composition-UmfassendesBeispiel
* entry[HaeuslicheKrankenpflegeVerordnung].fullUrl = "CarePlan/BeispielCarePlan"
* entry[HaeuslicheKrankenpflegeVerordnung].resource = BeispielCarePlan
* entry[HaeuslicheKrankenpflege].fullUrl = "ServiceRequest/BeispielMedikamentengabeServiceRequest"
* entry[HaeuslicheKrankenpflege].resource = BeispielMedikamentengabeServiceRequest
* entry[HaeuslicheKrankenpflege].fullUrl = "ServiceRequest/BeispielBlutzuckermessungServiceRequest"
* entry[HaeuslicheKrankenpflege].resource = BeispielBlutzuckermessungServiceRequest
* entry[HaeuslicheKrankenpflege].fullUrl = "ServiceRequest/BeispielKompressionsbehandlungServiceRequest"
* entry[HaeuslicheKrankenpflege].resource = BeispielKompressionsbehandlungServiceRequest
* entry[HaeuslicheKrankenpflege].fullUrl = "ServiceRequest/BeispielWundversorgungServiceRequest"
* entry[HaeuslicheKrankenpflege].resource = BeispielWundversorgungServiceRequest
* entry[HaeuslicheKrankenpflege].fullUrl = "ServiceRequest/BeispielSonstigeMassnahmenServiceRequest"
* entry[HaeuslicheKrankenpflege].resource = BeispielSonstigeMassnahmenServiceRequest
* entry[HaeuslicheKrankenpflege].fullUrl = "ServiceRequest/BeispielGrundpflegeHauswirtschaftServiceRequest"
* entry[HaeuslicheKrankenpflege].resource = BeispielGrundpflegeHauswirtschaftServiceRequest
* entry[Patient].fullUrl = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Patient].resource = Patient_Example
* entry[AusstellendeVerschreibendeVerantwortlichePerson].fullUrl = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[AusstellendeVerschreibendeVerantwortlichePerson].resource = Practitioner_Example
* entry[Einrichtung].fullUrl = "Organization/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Einrichtung].resource = Organization_Example
* entry[Krankenversicherungsverhaeltnis].fullUrl = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Krankenversicherungsverhaeltnis].resource = Coverage_Example
* entry[Pflegedienst].fullUrl = "CareTeam/beispielPflegeteam"
* entry[Pflegedienst].resource = CareTeam_Example


//Neuer CarePlan
Instance: BeispielMedikamentengabeServiceRequest
InstanceOf: ODIL_MedikamentengabeServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* performer = Reference(Organization/example)
* occurrenceTiming.repeat.boundsPeriod.start = "2023-06-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-08-31"
* occurrenceTiming.repeat.frequency = 3
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* extension[medikationDetails].extension[medikament].valueCodeableConcept = $sct#372567009 "Insulin"
* extension[medikationDetails].extension[dosierung].valueDosage.timing.repeat.frequency = 3
* extension[medikationDetails].extension[dosierung].valueDosage.timing.repeat.period = 1
* extension[medikationDetails].extension[dosierung].valueDosage.timing.repeat.periodUnit = #d
* extension[medikationDetails].extension[verabreichungsweg].valueCodeableConcept = $sct#34206005 "Subcutaneous route"
* extension[medikamentenboxHerrichtung].valueBoolean = true

Instance: BeispielBlutzuckermessungServiceRequest
InstanceOf: ODIL_BlutzuckermessungServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* performer = Reference(Organization/example)
* occurrenceTiming.repeat.boundsPeriod.start = "2023-06-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-07-01"
* occurrenceTiming.repeat.frequency = 3
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* extension[erstOderNeueinstellung].valueBoolean = true
* extension[intensiviertInsulin].valueBoolean = true

Instance: BeispielKompressionsbehandlungServiceRequest
InstanceOf: ODIL_KompressionsbehandlungServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* performer = Reference(Organization/example)
* occurrenceTiming.repeat.boundsPeriod.start = "2023-06-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-08-31"
* occurrenceTiming.repeat.frequency = 2
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* bodySite = $sct#69695003 "Struktur des rechten Beins"
* extension[kompressionsartDetails].extension[kompressionsstruempfe].valueCodeableConcept = $sct#229070002 "Anziehen von Kompressionsstrümpfen"
* extension[kompressionsartDetails].extension[kompressionsverbaende].valueCodeableConcept = $sct#225369006 "Anlegen von Kompressionsverband"

Instance: BeispielWundversorgungServiceRequest
InstanceOf: ODIL_WundversorgungServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* performer = Reference(Organization/example)
* occurrenceTiming.repeat.boundsPeriod.start = "2023-06-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-08-31"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* bodySite = $sct#72001000 "Struktur der Fußsohle"
* extension[wundartDetails].extension[wundart].valueString = "Diabetisches Fußulkus"
* extension[wundartDetails].extension[aktuelleGroesse].valueString = "3cm x 2cm"
* extension[wundartDetails].extension[aktuellerGrad].valueString = "Grad 2"
* extension[wundartDetails].extension[praeparate].valueString = "Hydrokolloidverband"
* extension[wundartDetails].extension[versorgungsart].valueCodeableConcept = $sct#225360001 "Chronische Wundversorgung"

Instance: BeispielSonstigeMassnahmenServiceRequest
InstanceOf: ODIL_SonstigeMassnahmenServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* performer = Reference(Organization/example)
* occurrenceTiming.repeat.boundsPeriod.start = "2023-06-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-08-31"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* code = $sct#225358003 "Kompressionsbehandlung"
* extension[anleitungDetails].extension[anleitungsArt].valueString = "Anleitung zur Kompressionsbehandlung"
* extension[anleitungDetails].extension[anzahl].valuePositiveInt = 3

Instance: BeispielGrundpflegeHauswirtschaftServiceRequest
InstanceOf: ODIL_GrundpflegeHauswirtschaftServiceRequest
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* performer = Reference(Organization/example)
* occurrenceTiming.repeat.boundsPeriod.start = "2023-06-01"
* occurrenceTiming.repeat.boundsPeriod.end = "2023-08-31"
* occurrenceTiming.repeat.frequency = 1
* occurrenceTiming.repeat.period = 1
* occurrenceTiming.repeat.periodUnit = #d
* code = $sct#78680009 "Grundpflege"
* extension[unterstuetzungspflege].valueBoolean = true
* extension[krankenhausvermeidungspflege].valueBoolean = false
* extension[grundpflegeDetails].valueBoolean = true
* extension[hauswirtschaftlicheVersorgungDetails].valueBoolean = true

Instance: BeispielCarePlan
InstanceOf: ODIL_CarePlan
Usage: #example
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* period.start = "2023-06-01"
* period.end = "2023-08-31"
* created = "2023-05-15"
* author = Reference(Practitioner/example)
* careTeam = Reference(CareTeam/example)
* addresses = Reference(Condition/example)
* activity[0].detail.kind = #ServiceRequest
* activity[0].detail.status = #scheduled
* activity[0].detail.code = $sct#18629005 "Medikamentengabe"
* activity[0].reference = Reference(BeispielMedikamentengabeServiceRequest)
* activity[1].detail.kind = #ServiceRequest
* activity[1].detail.status = #scheduled
* activity[1].detail.code = $sct#33747003 "Blutzuckermessung"
* activity[1].reference = Reference(BeispielBlutzuckermessungServiceRequest)
* activity[2].detail.kind = #ServiceRequest
* activity[2].detail.status = #scheduled
* activity[2].detail.code = $sct#225358003 "Kompressionsbehandlung"
* activity[2].reference = Reference(BeispielKompressionsbehandlungServiceRequest)
* activity[3].detail.kind = #ServiceRequest
* activity[3].detail.status = #scheduled
* activity[3].detail.code = $sct#385949008 "Wundversorgung"
* activity[3].reference = Reference(BeispielWundversorgungServiceRequest)
* activity[4].detail.kind = #ServiceRequest
* activity[4].detail.status = #scheduled
* activity[4].detail.code = $sct#385763009 "Sonstige Maßnahmen der Behandlungspflege"
* activity[4].reference = Reference(BeispielSonstigeMassnahmenServiceRequest)
* activity[5].detail.kind = #ServiceRequest
* activity[5].detail.status = #scheduled
* activity[5].detail.code = $sct#78680009 "Grundpflege"
* activity[5].reference = Reference(BeispielGrundpflegeHauswirtschaftServiceRequest)
* extension[einschraenkungen].valueString = "Patient hat eingeschränkte Mobilität und benötigt Unterstützung bei der täglichen Medikamenteneinnahme, Wundversorgung und Grundpflege"
* extension[erstverordnung].valueBoolean = true
* extension[folgeverordnung].valueBoolean = false
* extension[unfall].valueBoolean = false
* extension[ser].valueBoolean = false