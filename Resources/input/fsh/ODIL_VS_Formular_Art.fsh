// Definition eines eigenen Code-Systems für zusätzliche Codes
CodeSystem: CS_HIMI_HEIMI_FORMULAR_ART
Id: code-system-himi-heimi-formular-art
Title: "CS_HIMI_HEIMI_FORMULAR_ART"
Description: "Ein Code-System für zusätzliche Codes, die nicht im KBV Code-System enthalten sind"
* #e04 "Fahrtkosten" "Fahrtkosten"
* #e08 "Sehhilfe" "Sehhilfe"
* #e08AH "Sehilfe" "Sehhilfe" 
* #e12H "Pflegedienst" "häusliche Pflege"
* #e15H "Hörhilfe" "Hörhilfe"
* #e16H "Hilfsmittel" "Hilfsmittel"


// Definition eines Value Sets, das sowohl Codes aus dem KBV Code-System als auch die eigenen Codes umfasst
ValueSet: VS_HIMI_HEIMI_KBV_FORMULAR_ART
Id: VS-HIMI-HEIMI-KBV-FORMULAR-ART
Title: "VS_HIMI_HEIMI_KBV_FORMULAR_ART"
Description: "Ein ValueSet, das sowohl ausgewählte Codes aus dem KBV Code-System als auch zusätzliche eigene Codes umfasst"
//* include codes from system https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_KBV_FORMULAR_ART // Annahme, dass dies möglich wäre ist es zur Zeit nichtda die fhir ressourcen nicht verfügbar sind
* include codes from system CS_HIMI_HEIMI_FORMULAR_ART

