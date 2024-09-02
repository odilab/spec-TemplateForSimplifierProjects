Profile: ODIL_Bundle
Parent: Bundle
Id: ODIL-Bundle
Title: "ODIL eVerordnungs Bundle"
Description: "Dieses Profil repräsentiert die Verordnung von Hilfsmitteln basierend auf dem Muster 12."
* obeys Composition-pflicht and typComposition and angabePruefnummer and angabePLZ and angabeNrAusstellendePerson and angabeBetriebsstaettennr and angabeRechtsgrundlage and Arztpraxis-1 and Arztpraxis-2 and Patient-1 and Patient-2  and unique-DeviceRequest
* id 1.. MS
* meta 1.. MS
* meta.id ..0
* meta.versionId ..0 N
* meta.lastUpdated MS N
* meta.source ..0 N
* meta.profile 1..1 MS N
* meta.security ..0
* meta.tag ..0
* implicitRules ..0 N
* language ..0 N
* identifier 1.. MS
* identifier.use ..0 N
* identifier.type ..0
* identifier.system 1.. MS N
* identifier.system = "https://gematik.de/fhir/NamingSystem/PrescriptionID" (exactly)
* identifier.system ^definition = "Für den digitalen Vordruck \"Elektronische Verordnung einer Krankenbeförderung (Muster 4)\" wird die Dokumenten-ID gemäß den Vorgaben der gematik gesetzt."
* identifier.value 1.. MS N
* identifier.value ^short = "Dokumenten-ID"
* identifier.value ^definition = "Eindeutige Identifikation des Dokuments, bzw. der Verordnung. Diese ID wird mit signiert und sichert damit die Verordnung vor Fälschungen.\n\nFür den digitalen Vordruck \"Elektronische Verordnung einer Krankenbeförderung (Muster 4)\" wird die Dokumenten-ID gemäß den Vorgaben der gematik gesetzt."
* identifier.period ..0
* identifier.assigner ..0
* type = #document (exactly)
* type MS N
* timestamp 1.. MS N
* timestamp ^definition = "DateTime wann das Dokument technisch erstellt wurde. \nFachlich bildet das Ausstellungsdatum das entscheidende Datum ab"
* total ..0 N
* link ..0
* entry 1.. MS
* entry ^slicing.discriminator.type = #value
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #closed
* entry.link ..0
* entry.fullUrl 1.. MS
* entry.resource 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    Dokumenteninformation 1..1 MS and
    Krankenversicherungsverhaeltnis 0..1 MS and
    Patient 0..1 MS and
    Einrichtung 1..1 MS and
    AusstellendeVerschreibendeVerantwortlichePerson 1..2 MS and
    VerordnungHilfsmittel 0..1 MS and
    HaeuslicheKrankenpflegeVerordnung 0..1 MS and
    Pflegedienst 0..1 MS and
    HaeuslicheKrankenpflege 0..6 MS
* entry[Dokumenteninformation].resource only ODIL_Composition
* entry[Patient].resource only KBV_PR_FOR_Patient
* entry[Krankenversicherungsverhaeltnis].resource only KBV_PR_FOR_Coverage
* entry[Einrichtung].resource only KBV_PR_FOR_Organization
* entry[AusstellendeVerschreibendeVerantwortlichePerson].resource only KBV_PR_FOR_Practitioner
* entry[VerordnungHilfsmittel].resource only PrescriptionDevice
* entry[HaeuslicheKrankenpflegeVerordnung].resource only ODIL_CarePlan
* entry[Pflegedienst].resource only CareTeam
* entry[HaeuslicheKrankenpflege].resource only ODIL_BaseServiceRequest
* signature ..1

Invariant: Composition-pflicht
Description: "Die Ressource vom Typ Composition muss genau einmal vorhanden sein"
* severity = #error
* expression = "entry.where(resource is Composition).count()=1"
* source = "Bundle"

Invariant: typComposition
Description: "Die Instanz der Composition muss vom Profil 'CompositionHiMi' sein"
* severity = #error
* expression = "entry.where(resource is Composition).resource.meta.profile = 'http://fhir.odilab.de/StructureDefinition/CompositionHiMi'"
* source = "Bundle"

Invariant: angabePruefnummer
Description: "Prüfnummer nicht vorhanden, aber Pflicht bei den Kostenträger der Typen \"GKV\", \"BG\", \"SKT\" oder \"UK\""
* severity = #error
* expression = "(entry.where(resource is Coverage).exists() and (entry.where(resource is Coverage).resource.type.coding.code='GKV' or entry.where(resource is Coverage).resource.type.coding.code='BG' or entry.where(resource is Coverage).resource.type.coding.code='SKT' or entry.where(resource is Coverage).resource.type.coding.code='UK')) implies entry.where(resource is Composition).resource.author.identifier.where(system='https://fhir.kbv.de/NamingSystem/KBV_NS_FOR_Pruefnummer').exists()"
* source = "Bundle"


Invariant: angabePLZ
Description: "Postleitzahl nicht vorhanden, aber Pflicht bei den Kostentraegern der Typen \"GKV\", \"BG\", \"SKT\" oder \"UK\""
* severity = #error
* expression = "(entry.where(resource is Coverage).exists() and (entry.where(resource is Coverage).resource.type.coding.code='GKV' or entry.where(resource is Coverage).resource.type.coding.code='BG' or entry.where(resource is Coverage).resource.type.coding.code='SKT' or entry.where(resource is Coverage).resource.type.coding.code='UK')) implies entry.where(resource is Patient).resource.address.postalCode.exists()"
* source = "Bundle"

Invariant: angabeNrAusstellendePerson
Description: "Nummer der ausstellenden Person nicht vorhanden, aber Pflicht, wenn es sich um einen Arzt oder Zahnarzt handelt"
* severity = #error
* expression = "(entry.where(resource is Coverage).exists() and (entry.where(resource is Coverage).resource.type.coding.code='GKV' or entry.where(resource is Coverage).resource.type.coding.code='BG' or entry.where(resource is Coverage).resource.type.coding.code='SKT' or entry.where(resource is Coverage).resource.type.coding.code='UK') and (entry.where(resource is Practitioner).resource.qualification.coding.code='00' or entry.where(resource is Practitioner).resource.qualification.coding.code='01')) implies entry.where(resource is Practitioner).resource.identifier.exists()"
* source = "Bundle"

Invariant: angabeBetriebsstaettennr
Description: "Betriebsstaettennummer nicht vorhanden, aber Pflicht, wenn es sich um einen Arzt, Zahnarzt oder Arzt in Weiterbildung handelt"
* severity = #error
* expression = "(entry.where(resource is Coverage).exists() and (entry.where(resource is Coverage).resource.type.coding.code='GKV' or entry.where(resource is Coverage).resource.type.coding.code='BG' or entry.where(resource is Coverage).resource.type.coding.code='SKT' or entry.where(resource is Coverage).resource.type.coding.code='UK') and (entry.where(resource is Practitioner).resource.qualification.coding.code='00' or entry.where(resource is Practitioner).resource.qualification.coding.code='01' or entry.where(resource is Practitioner).resource.qualification.coding.code='03')) implies entry.where(resource is Organization).resource.identifier.exists()"
* source = "Bundle"

Invariant: angabeRechtsgrundlage
Description: "Rechtsgrundlage nicht vorhanden, aber Pflicht bei den Kostentraegern der Typen \"GKV\", \"BG\", \"SKT\" oder \"UK\""
* severity = #error
* expression = "(entry.where(resource is Coverage).exists() and (entry.where(resource is Coverage).resource.type.coding.code='GKV' or entry.where(resource is Coverage).resource.type.coding.code='BG' or entry.where(resource is Coverage).resource.type.coding.code='SKT' or entry.where(resource is Coverage).resource.type.coding.code='UK')) implies entry.where(resource is Composition).resource.extension('https://fhir.kbv.de/StructureDefinition/KBV_EX_FOR_Legal_basis').exists()"
* source = "Bundle"

Invariant: Arztpraxis-1
Description: "Für eine Arztpraxis muss eine BSNR angegeben werden."
* severity = #error
* expression = "entry.where(resource is Organization).exists() implies entry.where(resource is Organization).resource.identifier.system = 'https://fhir.kbv.de/NamingSystem/KBV_NS_Base_BSNR'"
* source = "Bundle"

Invariant: Arztpraxis-2
Description: "Bei einer Arztpraxis darf kein Institutionskennzeichen angegeben werden."
* severity = #error
* expression = "entry.where(resource is Organization).exists() implies entry.where(resource is Organization).resource.identifier.system != 'http://fhir.de/NamingSystem/arge-ik/iknr'"
* source = "Bundle"

Invariant: Patient-1
Description: "Bei einem Patienten mit gesetzlicher Krankenversicherung muss die gesetzliche Krankenversicherungsnummer angegeben werden."
* severity = #error
* expression = "entry.where(resource is Coverage).resource.type.coding.code = 'GKV' implies entry.where(resource is Patient).resource.identifier.type.coding.code = 'GKV'"
* source = "Bundle"

Invariant: Patient-2
Description: "Bei einem Patienten mit privater Krankenversicherung muss die private Krankenversicherungsnummer angegeben werden."
* severity = #error
* expression = "entry.where(resource is Coverage).resource.type.coding.code = 'PKV' implies entry.where(resource is Patient).resource.identifier.type.coding.code = 'PKV'"
* source = "Bundle"

Invariant: unique-DeviceRequest
Description: "Die Einträge für die Instanz DeviceRequest müssen im Dokument eindeutig sein."
* severity = #error
* expression = "entry.select(resource as DeviceRequest).resource.code.coding.code.isDistinct()"
* source = "Bundle"