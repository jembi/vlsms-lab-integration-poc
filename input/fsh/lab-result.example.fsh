Instance: LabResultBundle
InstanceOf: Bundle
Usage: #example
Title: "Lab Order Bundle"
Description: ""
* type = #transaction
* entry[+].fullUrl = "Task/LabOrderTaskUpdatedExample"
* entry[=].resource = LabOrderTaskUpdatedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/{{TaskID}}"
* entry[+].fullUrl = "DiagnosticReport/DiagnosticReportExample"
* entry[=].resource = DiagnosticReportExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/DiagnosticReportExample"
* entry[+].fullUrl = "Practitioner/LabPractitionerExample"
* entry[=].resource = LabPractitionerExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/LabPractitionerExample"
* entry[+].fullUrl = "Specimen/LabSpecimenUpdatedExample"
* entry[=].resource = LabSpecimenUpdatedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Specimen/{{SpecimenID}}"
* entry[+].fullUrl = "Observation/ViralLoadSuppressionMostRecentTestResultExample"
* entry[=].resource = ViralLoadSuppressionMostRecentTestResultExample
* entry[=].request.method = #POST
* entry[=].request.url = "Observation/ViralLoadSuppressionMostRecentTestResultExample"

Instance: LabOrderTaskUpdatedExample
InstanceOf: Task
Usage: #example
Title: "Lab Order Task Updated Example"
Description: ""
* status = #completed
* intent = #order
* identifier.system = "http://openhie.org/fhir/lab-integration/test-order-number"
* identifier.value = "123"
* requester = Reference(Organization/{{EMROrgID}})
* owner = Reference(Organization/{{LabOrgID}})
* lastModified = "2022-07-22"
* basedOn = Reference(ServiceRequest/{{ServiceRequestID}})
* output.type.coding.code = #result
* output.type.coding.system = "http://openhie.org/fhir/lab-integration/task-output"
* output.valueReference = Reference(DiagnosticReportExample)

Instance: LabSpecimenUpdatedExample
InstanceOf: Specimen
Usage: #example
Title: "Lab Specimen Updated Example"
Description: ""
* type.coding.code = #123
* type.coding.system = "http://openhie.org/fhir/lab-integration/specimen-type-code"
* collection.collectedDateTime = "2022-07-22"
* processing.timeDateTime = "2022-07-22"
* receivedTime = "2022-07-22"

Instance: DiagnosticReportExample
InstanceOf: DiagnosticReport
Usage: #example
Title: "Diagnostic Report Example"
Description: ""
* status = #final
* code.coding.code = #10351-5
* code.coding.system = $LNC
* performer = Reference(LabPractitionerExample)
* conclusion = "Some textual conclusion"
* result = Reference(ViralLoadSuppressionMostRecentTestResultExample)

Instance: ViralLoadSuppressionMostRecentTestResultExample
InstanceOf: ViralLoadSuppressionMostRecentTestResult
Usage: #example
Title: "HIV Viral Load Suppression Most Recent Test Result Example"
Description: "."
* status = #final
* subject = Reference(Patient/{{PatientID}})
* effectiveDateTime = "2020-06-09"
* valueString = "29"
* interpretation = CSVLInterpretation#D

Instance: LabPractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "Lab Practitioner"
Description: ""
* name.given = "Sarah"
* name.family = "Lacnet"
* telecom.system = #phone
* telecom.value = "+1234567890"
