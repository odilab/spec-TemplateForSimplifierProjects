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


// Beispiel-Instanz
Instance: ODIL_CarePlan
InstanceOf: ODIL_CarePlan
Usage: #example
Title: "Beispiel HKPR Verordnung"
Description: "Beispiel für eine Verordnung häuslicher Krankenpflege"
* id = "BeispielHKPVerordnung"
* status = #active
* intent = #order
* subject = Reference(Patient_Example)
* period.start = "2024-07-01"
* period.end = "2024-07-15"
* created = "2024-06-30"
* author = Reference(Practitioner_Example)
* careTeam = Reference(CareTeam/example)
* addresses = Reference(Condition/example)
* addresses.extension.url = "http://hl7.org/fhir/StructureDefinition/condition-assertedDate"
* addresses.extension.valueDateTime = "2024-06-30"
* extension[einschraenkungen].valueString = "Eingeschränkte Mobilität"
* extension[erstverordnung].valueBoolean = true
* activity[+].detail.kind = #ServiceRequest
* activity[=].detail.status = #scheduled
* activity[=].detail.code = $sct#18629005 "Medikamentengabe"
* activity[=].detail.description = "3x täglich 10 Einheiten Insulin"
* activity[=].detail.extension[MedikamentengabeDetails].extension[productCodeableConcept].valueCodeableConcept = $sct#372567009 "Insulin"
* activity[=].detail.extension[MedikamentengabeDetails].extension[dailyAmount].valueQuantity = 3 '{count}'
* activity[=].detail.extension[MedikamentengabeDetails].extension[quantity].valueQuantity = 10 'U' "Units"
* activity[+].detail.kind = #ServiceRequest
* activity[=].detail.status = #scheduled
* activity[=].detail.code = $sct#33747003 "Blutzuckermessung"
* activity[=].detail.description = "3x täglich Blutzucker messen"
* activity[=].detail.extension[BlutzuckermessungDetails].extension[scheduledTiming].valueTiming.repeat.frequency = 3
* activity[=].detail.extension[BlutzuckermessungDetails].extension[scheduledTiming].valueTiming.repeat.period = 1
* activity[=].detail.extension[BlutzuckermessungDetails].extension[scheduledTiming].valueTiming.repeat.periodUnit = #d

Instance: ODIL_Bundle_CarePlan
InstanceOf: ODIL_Bundle
Usage: #example
Title: "ODIL-Bundle-CarePlan"
Description: "Ein Bundle, das eine Verordnung für ein Hörgerät enthält."
* id = "ODIL-Bundle-CarePlan"
* identifier.value = "162.240.219.130.055.90"
* timestamp = "2021-01-01T00:00:00Z"
* entry[Dokumenteninformation].fullUrl = "Composition/Odil-Composition-CarePlan"
* entry[Dokumenteninformation].resource = Odil-Composition-CarePlan
* entry[HaeuslicheKrankenpflegeVerordnung].fullUrl = "CarePlan/BeispielHKPVerordnung"
* entry[HaeuslicheKrankenpflegeVerordnung].resource = ODIL_CarePlan
* entry[Patient].fullUrl = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Patient].resource = Patient_Example
* entry[AusstellendeVerschreibendeVerantwortlichePerson].fullUrl = "Practitioner/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[AusstellendeVerschreibendeVerantwortlichePerson].resource = Practitioner_Example
* entry[Einrichtung].fullUrl = "Organization/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Einrichtung].resource = Organization_Example
* entry[Krankenversicherungsverhaeltnis].fullUrl = "Coverage/416b7bc3-7483-46ba-bc67-306bf671c569"
* entry[Krankenversicherungsverhaeltnis].resource = Coverage_Example


Instance: Odil-Composition-CarePlan
InstanceOf: ODIL_Composition
Usage: #example
Title: "Odil-Composition-CarePlan"
Description: "Ein Dokument, das eine Verordnung für häusliche Krankenpflege enthält."
* id = "Odil-Composition-CarePlan"
* extension[Rechtsgrundlage].valueCoding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_STATUSKENNZEICHEN"
* extension[Rechtsgrundlage].valueCoding.code = #00
* status = #final
* type.coding.code = #e15H
* subject.reference = "Patient/416b7bc3-7483-46ba-bc67-306bf671c569"
* date = "2021-01-01"
* author[Arzt] = Reference(Practitioner_Example)
* author[Pruefnummer].identifier.value = "Y/400/2107/36/999"
* custodian = Reference(Organization_Example)
* section[Verordnung_HaeuslicheKrankenpflege].entry = Reference(ODIL_CarePlan)
* section[Krankenversicherungsverhaeltnis].entry = Reference(Coverage_Example)
