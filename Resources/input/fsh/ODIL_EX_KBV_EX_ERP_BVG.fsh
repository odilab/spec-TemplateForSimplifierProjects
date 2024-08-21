Extension: KBV_EX_ERP_BVG_ODIL
Id: KBV-EX-ERP-BVG-ODIL
Title: "KBV_EX_ERP_BVG_ODIL"
Description: "(wird nur eingesetzt da KBV-EX-ERP-BVG nur für den MedicaionRequest zugelassen ist) \n\nKennzeichnung, ob diese Verordnung für Anspruchsberechtigte nach dem Bundesentschädigungsgesetz (BEG) oder für Anspruchsberechtigte nach dem Bundesversorgungsgesetz (BVG) erfolgt  \n\nfalse - kein BVG (Standardwert)\ntrue - BVG"
Context: DeviceRequest, MedicationRequest
* . ^short = "Kennzeichen BVG"
* value[x] only boolean
* value[x] 1..1