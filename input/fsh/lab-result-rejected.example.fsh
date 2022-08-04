Instance: LabResultRejectedBundle
InstanceOf: Bundle
Usage: #example
Title: "Lab Order Bundle"
Description: ""
* type = #transaction
* entry[+].fullUrl = "Task/LabOrderTaskRejectedExample"
* entry[=].resource = LabOrderTaskRejectedExample
* entry[=].request.method = #PUT
* entry[=].request.url = "Task/{{TaskID}}"

Instance: LabOrderTaskRejectedExample
InstanceOf: Task
Usage: #example
Title: "Lab Order Task Rejected Example"
Description: ""
* status = #rejected
* statusReason.coding.code = #some-reason
* statusReason.coding.system = "http://openhie.org/fhir/lab-integration/status-reason"
* statusReason.coding.display = "Some rejecttion reason"
* intent = #order
* identifier.system = "http://openhie.org/fhir/lab-integration/test-order-number"
* identifier.value = "123"
* requester = Reference(Organization/{{EMROrgID}})
* owner = Reference(Organization/{{LabOrgID}})
* lastModified = "2022-08-01"
* basedOn = Reference(ServiceRequest/{{ServiceRequestID}})
