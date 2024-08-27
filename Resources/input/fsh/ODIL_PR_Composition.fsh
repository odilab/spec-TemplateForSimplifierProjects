// Musste die Komplette Struktur kopieren von (https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Composition)
// da unveränderbare Fixed Values in der Struktur vorhanden sind, die wir aber zwingend ändern müssen (siehe Feld type.coding.code)
Alias: $KBV_EX_FOR_Legal_basis = https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis
Alias: $KBV_EX_FOR_PKV_Tariff = https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_PKV_Tariff

Profile: ODIL_Composition
Parent: Composition
Id: Odil-CompositionHiMi
* obeys -erp-subjectAndPrescription and -erp-coverageAndPrescription
* id 1.. MS
* meta 1.. MS
* meta.versionId ..0
* meta.lastUpdated ..0
* meta.source ..0
* meta.profile 1..1 MS
//dies ist im KBV_PR_ERP_Composition ein fixed value, der nicht geändert werden kann 
//* meta.profile = "https://fhir.odilab.de/StructureDefinition/CompositionHiMi" (exactly)
* meta.security ..0
* meta.tag ..0
* implicitRules ..0
* language ..0
* contained ..0
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #closed
* extension ^min = 0
* extension contains
    $KBV_EX_FOR_Legal_basis named Rechtsgrundlage 0..* MS and
    $KBV_EX_FOR_PKV_Tariff named PKV-Tarif 0..* MS
* extension[Rechtsgrundlage] ^min = 0
* extension[Rechtsgrundlage].value[x] MS
* extension[Rechtsgrundlage].valueCoding MS
* extension[Rechtsgrundlage].valueCoding ^sliceName = "valueCoding"
* extension[Rechtsgrundlage].valueCoding.code ^short = "Kennzeichen Rechtsgrundlage"
* extension[PKV-Tarif] ^min = 0
* extension[PKV-Tarif].value[x] MS
* extension[PKV-Tarif].valueCoding MS
* extension[PKV-Tarif].valueCoding ^sliceName = "valueCoding"
* extension[PKV-Tarif].valueCoding.system MS
* extension[PKV-Tarif].valueCoding.code MS
* identifier ..0
* identifier ^mustSupport = false
* identifier.use ..0
* identifier.type ..0
* identifier.system ..0
* identifier.system ^mustSupport = false
* identifier.value ^mustSupport = false
* identifier.period ..0
* identifier.assigner ..0
* status = #final (exactly)
* status MS
* type MS
* type.coding 1..1 MS
* type.coding.system 1.. MS
//dies ist im KBV_PR_ERP_Composition ein fixed value, der nicht geändert werden kann
* type.coding.system = "https://fhir.odilab.de/ValueSet/VS_HIMI_HEIMI_KBV_FORMULAR_ART" (exactly)
* type.coding.version ..0
* type.coding.code 1.. MS
* type.coding.code from VS_HIMI_HEIMI_KBV_FORMULAR_ART
* type.coding.code ^short = "Dokumententyp"
* type.coding.code ^definition = "Kennzeichnung des vorliegenden Formulars der vertragsärztlichen Versorgung"
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* category ..0
* subject only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Patient|1.1.0)
* subject MS
* subject.reference 1.. MS
* subject.type ..0
* subject.identifier ..0
* subject.display ..0
* encounter ..0
* date MS
* author ..2 MS
* author ^slicing.discriminator.type = #value
* author ^slicing.discriminator.path = "type"
* author ^slicing.rules = #closed
* author contains
    Arzt 1..1 MS and
    Pruefnummer 0..1 MS
* author[Arzt] only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.1.0)
* author[Arzt].reference 1.. MS
* author[Arzt].type 1.. MS
* author[Arzt].type = "Practitioner" (exactly)
* author[Arzt].identifier ..0
* author[Arzt].display ..0
* author[Pruefnummer].reference ..0
* author[Pruefnummer].type 1.. MS
* author[Pruefnummer].type = "Device" (exactly)
* author[Pruefnummer].identifier 1.. MS
* author[Pruefnummer].identifier.use ..0
* author[Pruefnummer].identifier.type ..0
* author[Pruefnummer].identifier.system 1.. MS
* author[Pruefnummer].identifier.system = "https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Pruefnummer" (exactly)
* author[Pruefnummer].identifier.value 1.. MS
* author[Pruefnummer].identifier.value ^short = "Prüfnummer"
* author[Pruefnummer].identifier.value ^definition = "Jede zertifizierte Software erhält eine Prüfnummer im Rahmen der Zertifizierung der KBV. Diese ist in dem digitalen Vordruck anzugeben.\n\nFür den digitalen Vordruck \"Elektronische Arzneimittelverordnung (Vordruck e160)\" ist die Prüfnummer für das Zertifizierungsthema \"Verordnung von Arzneimitteln\" anzugeben."
* author[Pruefnummer].identifier.period ..0
* author[Pruefnummer].identifier.assigner ..0
* author[Pruefnummer].display ..0
* title = "elektronische Arznei- Heil- Hilfsmittelverordnung" (exactly)
* title MS
* confidentiality ..0
* attester ..1 MS
* attester ^short = "Daten der verantwortliche Person"
* attester ^definition = "Referenz auf den zur Weiterbildung ermächtigten Arztes (im vertrags(zahn)ärztlichen Bereich) bzw. des beauftragender Facharztes  (im Krankenhaus), sofern nötig."
* attester.mode = #legal (exactly)
* attester.mode MS
* attester.time ..0
* attester.party 1.. MS
* attester.party only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Practitioner|1.1.0)
* attester.party.reference 1.. MS
* attester.party.type ..0
* attester.party.identifier ..0
* attester.party.display ..0
* custodian 1.. MS
* custodian only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Organization|1.1.0)
* custodian.reference 1.. MS
* custodian.type ..0
* custodian.identifier ..0
* custodian.display ..0
* relatesTo ..0
* event ..0
* section 1.. MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.coding.code"
* section ^slicing.rules = #closed
* section contains
    Verordnung_Arzneimittel 0..1 MS and
    Verordnung_Sprechstundenbedarf 0..1 MS and
    Krankenversicherungsverhaeltnis 0..1 MS and
    ASV-Ausuebung 0..1 MS and
    Verordnung_Hilfsmittel 0..1 MS and
    Verordnung_HaeuslicheKrankenpflege 0..1 MS
* section[Verordnung_HaeuslicheKrankenpflege].title ..0
* section[Verordnung_HaeuslicheKrankenpflege].code 1.. MS
* section[Verordnung_HaeuslicheKrankenpflege].code.coding 1..1 MS
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.system 1.. MS
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Section_Type" (exactly)
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.version ..0
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.code 1.. MS
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.code = #PrescriptionHaeuslicheKrankenpflege (exactly)
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.display ..0
* section[Verordnung_HaeuslicheKrankenpflege].code.coding.userSelected ..0
* section[Verordnung_HaeuslicheKrankenpflege].code.text ..0
* section[Verordnung_HaeuslicheKrankenpflege].author ..0
* section[Verordnung_HaeuslicheKrankenpflege].focus ..0
* section[Verordnung_HaeuslicheKrankenpflege].text ..0
* section[Verordnung_HaeuslicheKrankenpflege].mode ..0
* section[Verordnung_HaeuslicheKrankenpflege].orderedBy ..0
* section[Verordnung_HaeuslicheKrankenpflege].entry 1..1 MS
* section[Verordnung_HaeuslicheKrankenpflege].entry only Reference(ODIL_CarePlan)
* section[Verordnung_HaeuslicheKrankenpflege].entry.reference 1.. MS
* section[Verordnung_HaeuslicheKrankenpflege].entry.type ..0
* section[Verordnung_HaeuslicheKrankenpflege].entry.identifier ..0
* section[Verordnung_HaeuslicheKrankenpflege].entry.display ..0
* section[Verordnung_HaeuslicheKrankenpflege].emptyReason ..0
* section[Verordnung_HaeuslicheKrankenpflege].section ..0
* section[Verordnung_Hilfsmittel].code.coding 1..1 MS
* section[Verordnung_Hilfsmittel].code.coding.system 1.. MS
* section[Verordnung_Hilfsmittel].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Section_Type" (exactly)
* section[Verordnung_Hilfsmittel].code.coding.version ..0
* section[Verordnung_Hilfsmittel].code.coding.code 1.. MS
* section[Verordnung_Hilfsmittel].code.coding.code = #PrescriptionHilfsmittel (exactly)
* section[Verordnung_Hilfsmittel].code.coding.display ..0
* section[Verordnung_Hilfsmittel].code.coding.userSelected ..0
* section[Verordnung_Hilfsmittel].author ..0
* section[Verordnung_Hilfsmittel].focus ..0
* section[Verordnung_Hilfsmittel].text ..0
* section[Verordnung_Hilfsmittel].mode ..0
* section[Verordnung_Hilfsmittel].orderedBy ..0
* section[Verordnung_Hilfsmittel].entry 1..1 MS
* section[Verordnung_Hilfsmittel].entry only Reference(PrescriptionDevice)
* section[Verordnung_Hilfsmittel].entry.reference 1.. MS
* section[Verordnung_Hilfsmittel].entry.type ..0
* section[Verordnung_Hilfsmittel].entry.identifier ..0
* section[Verordnung_Hilfsmittel].entry.display ..0
* section[Verordnung_Hilfsmittel].emptyReason ..0
* section[Verordnung_Hilfsmittel].section ..0
* section[Verordnung_Arzneimittel] 0..0
* section[Verordnung_Sprechstundenbedarf] 0..0
* section[Verordnung_Arzneimittel].title ..0
* section[Verordnung_Arzneimittel].code 1.. MS
* section[Verordnung_Arzneimittel].code.coding 1..1 MS
* section[Verordnung_Arzneimittel].code.coding.system 1.. MS
* section[Verordnung_Arzneimittel].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Section_Type" (exactly)
* section[Verordnung_Arzneimittel].code.coding.version ..0
* section[Verordnung_Arzneimittel].code.coding.code 1.. MS
* section[Verordnung_Arzneimittel].code.coding.code = #Prescription (exactly)
* section[Verordnung_Arzneimittel].code.coding.display ..0
* section[Verordnung_Arzneimittel].code.coding.userSelected ..0
* section[Verordnung_Arzneimittel].code.text ..0
* section[Verordnung_Arzneimittel].author ..0
* section[Verordnung_Arzneimittel].focus ..0
* section[Verordnung_Arzneimittel].text ..0
* section[Verordnung_Arzneimittel].mode ..0
* section[Verordnung_Arzneimittel].orderedBy ..0
* section[Verordnung_Arzneimittel].entry 1..1 MS
* section[Verordnung_Arzneimittel].entry only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_Prescription|1.1.0)
* section[Verordnung_Arzneimittel].entry.reference 1.. MS
* section[Verordnung_Arzneimittel].entry.type ..0
* section[Verordnung_Arzneimittel].entry.identifier ..0
* section[Verordnung_Arzneimittel].entry.display ..0
* section[Verordnung_Arzneimittel].emptyReason ..0
* section[Verordnung_Arzneimittel].section ..0
* section[Verordnung_Sprechstundenbedarf].title ..0
* section[Verordnung_Sprechstundenbedarf].code 1.. MS
* section[Verordnung_Sprechstundenbedarf].code.coding 1..1 MS
* section[Verordnung_Sprechstundenbedarf].code.coding.system 1.. MS
* section[Verordnung_Sprechstundenbedarf].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Section_Type" (exactly)
* section[Verordnung_Sprechstundenbedarf].code.coding.version ..0
* section[Verordnung_Sprechstundenbedarf].code.coding.code 1.. MS
* section[Verordnung_Sprechstundenbedarf].code.coding.code = #PracticeSupply (exactly)
* section[Verordnung_Sprechstundenbedarf].code.coding.display ..0
* section[Verordnung_Sprechstundenbedarf].code.coding.userSelected ..0
* section[Verordnung_Sprechstundenbedarf].code.text ..0
* section[Verordnung_Sprechstundenbedarf].author ..0
* section[Verordnung_Sprechstundenbedarf].focus ..0
* section[Verordnung_Sprechstundenbedarf].text ..0
* section[Verordnung_Sprechstundenbedarf].mode ..0
* section[Verordnung_Sprechstundenbedarf].orderedBy ..0
* section[Verordnung_Sprechstundenbedarf].entry 1..1 MS
* section[Verordnung_Sprechstundenbedarf].entry only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_ERP_PracticeSupply|1.1.0)
* section[Verordnung_Sprechstundenbedarf].entry.reference 1.. MS
* section[Verordnung_Sprechstundenbedarf].entry.type ..0
* section[Verordnung_Sprechstundenbedarf].entry.identifier ..0
* section[Verordnung_Sprechstundenbedarf].entry.display ..0
* section[Verordnung_Sprechstundenbedarf].emptyReason ..0
* section[Verordnung_Sprechstundenbedarf].section ..0
* section[Krankenversicherungsverhaeltnis].title ..0
* section[Krankenversicherungsverhaeltnis].code 1.. MS
* section[Krankenversicherungsverhaeltnis].code.coding 1..1 MS
* section[Krankenversicherungsverhaeltnis].code.coding.system 1.. MS
* section[Krankenversicherungsverhaeltnis].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Section_Type" (exactly)
* section[Krankenversicherungsverhaeltnis].code.coding.version ..0
* section[Krankenversicherungsverhaeltnis].code.coding.code 1.. MS
* section[Krankenversicherungsverhaeltnis].code.coding.code = #Coverage (exactly)
* section[Krankenversicherungsverhaeltnis].code.coding.display ..0
* section[Krankenversicherungsverhaeltnis].code.coding.userSelected ..0
* section[Krankenversicherungsverhaeltnis].code.text ..0
* section[Krankenversicherungsverhaeltnis].author ..0
* section[Krankenversicherungsverhaeltnis].focus ..0
* section[Krankenversicherungsverhaeltnis].text ..0
* section[Krankenversicherungsverhaeltnis].mode ..0
* section[Krankenversicherungsverhaeltnis].orderedBy ..0
* section[Krankenversicherungsverhaeltnis].entry 1..1 MS
* section[Krankenversicherungsverhaeltnis].entry only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_Coverage|1.1.0)
* section[Krankenversicherungsverhaeltnis].entry.reference 1.. MS
* section[Krankenversicherungsverhaeltnis].entry.type ..0
* section[Krankenversicherungsverhaeltnis].entry.identifier ..0
* section[Krankenversicherungsverhaeltnis].entry.display ..0
* section[Krankenversicherungsverhaeltnis].emptyReason ..0
* section[Krankenversicherungsverhaeltnis].section ..0
* section[ASV-Ausuebung].title ..0
* section[ASV-Ausuebung].code 1.. MS
* section[ASV-Ausuebung].code.coding 1..1 MS
* section[ASV-Ausuebung].code.coding.system 1.. MS
* section[ASV-Ausuebung].code.coding.system = "https://fhir.kbv.de/CodeSystem/KBV_CS_ERP_Section_Type" (exactly)
* section[ASV-Ausuebung].code.coding.version ..0
* section[ASV-Ausuebung].code.coding.code 1.. MS
* section[ASV-Ausuebung].code.coding.code = #FOR_PractitionerRole (exactly)
* section[ASV-Ausuebung].code.coding.display ..0
* section[ASV-Ausuebung].code.coding.userSelected ..0
* section[ASV-Ausuebung].code.text ..0
* section[ASV-Ausuebung].author ..0
* section[ASV-Ausuebung].focus ..0
* section[ASV-Ausuebung].text ..0
* section[ASV-Ausuebung].mode ..0
* section[ASV-Ausuebung].orderedBy ..0
* section[ASV-Ausuebung].entry 1..1 MS
* section[ASV-Ausuebung].entry only Reference(https://fhir.kbv.de/StructureDefinition/KBV_PR_FOR_PractitionerRole)
* section[ASV-Ausuebung].entry.reference 1.. MS
* section[ASV-Ausuebung].entry.type ..0
* section[ASV-Ausuebung].entry.identifier ..0
* section[ASV-Ausuebung].entry.display ..0
* section[ASV-Ausuebung].emptyReason ..0
* section[ASV-Ausuebung].section ..0

Invariant: -erp-subjectAndPrescription
Description: "Referenz auf Patient nicht vorhanden, aber Pflicht bei Verordnung von Arzneimitteln"
* severity = #error
* expression = "section.where(code.coding.code='Prescription').exists() implies subject.exists()"

Invariant: -erp-coverageAndPrescription
Description: "Referenz auf Krankenversicherungsverhältnis nicht vorhanden, aber Pflicht bei Verordnung von Arzneimitteln"
* severity = #error
* expression = "section.where(code.coding.code='Prescription').exists() implies section.where(code.coding.code='Coverage').exists()"