Instance: LabOrderBundle
InstanceOf: Bundle
Usage: #example
Title: "Lab Order Bundle"
Description: ""
* type = #transaction
* entry[+].fullUrl = "Task/LabOrderTaskExample"
* entry[=].resource = LabOrderTaskExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/LabOrderTaskExample"
* entry[+].fullUrl = "Organization/HIVFacilityExample"
* entry[=].resource = HIVFacilityExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/HIVFacilityExample"
* entry[+].fullUrl = "Organization/HIVLabExample"
* entry[=].resource = HIVLabExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/HIVLabExample"
* entry[+].fullUrl = "ServiceRequest/LabOrderServiceRequestExample"
* entry[=].resource = LabOrderServiceRequestExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/LabOrderServiceRequestExample"
* entry[+].fullUrl = "Practitioner/FacilityPractitionerExample"
* entry[=].resource = FacilityPractitionerExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/FacilityPractitionerExample"
* entry[+].fullUrl = "Patient/HIVPatientExample"
* entry[=].resource = HIVPatientExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/HIVPatientExample"
* entry[+].fullUrl = "Specimen/LabSpecimenExample"
* entry[=].resource = LabSpecimenExample
* entry[=].request.method = #POST
* entry[=].request.url = "Task/LabSpecimenExample"

Instance: LabOrderTaskExample
InstanceOf: Task
Usage: #example
Title: "LabOrderTask"
Description: ""
* status = #requested
* intent = #order
* identifier.system = "http://openhie.org/fhir/lab-integration/test-order-number"
* identifier.value = "123"
* requester = Reference(HIVFacilityExample)
* owner = Reference(HIVLabExample)
* lastModified = "2022-07-22"
* basedOn = Reference(LabOrderServiceRequestExample)

Instance: HIVFacilityExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Facility Example"
Description: "Facility example"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"
* name = "HIV Facility"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-organization"
* identifier[=].value = "facility1"

Instance: HIVLabExample
InstanceOf: HIVOrganization
Usage: #example
Title: "HIV Lab Example"
Description: "Lab example"
* address[+].country = "DISI country"
* address[=].state = "DISI state 1"
* address[=].district = "DISI district 1"
* address[=].city = "DISI city 1"
* address[=].line[+] = "DISI line 1"
* address[=].line[+] = "DISI line 2"
* address[=].line[+] = "DISI line 3"
* address[=].postalCode = "DISI postal code"
* name = "HIV Lab"
* identifier[+].system = "http://openhie.org/fhir/hiv-casereporting/identifier/hiv-organization"
* identifier[=].value = "lab1"

Instance: HIVPatientExample
InstanceOf: HIVPatient
Usage: #example
Title: "HIV Patient example"
Description: "."
* active = true
* name.use = #official
* name.given = "Jane"
* name.family = "Smith"
* maritalStatus.coding[0].code = #M
* maritalStatus.coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* gender = #female
* birthDate = "1986-06-04"
* telecom.system = #phone
* telecom.value = "+27825556666"
* address.country = "South Africa"
* address.state = "Western Province"
* address.district = "City of Cape Town"
* address.city = "Cape Town"
* identifier[art].value = "ART1234567"
* identifier[art].system = "http://openhie.org/fhir/hiv-casereporting/identifier/art"
* identifier[passport].value = "PASSPORT1234567"
* identifier[passport].system = "http://openhie.org/fhir/hiv-casereporting/identifier/passport"
* identifier[national].value = "NAT1234567"
* identifier[national].system = "http://openhie.org/fhir/hiv-casereporting/identifier/nid"
* identifier[pos].value = "EMR1234567"
* identifier[pos].system = "http://openhie.org/fhir/hiv-casereporting/identifier/facility1"
* managingOrganization = Reference(HIVFacilityExample)
* extension[genderIdentity].valueCodeableConcept = #male
* extension[keyPopulation].valueCodeableConcept = #transgender

Instance: LabOrderServiceRequestExample
InstanceOf: ServiceRequest
Usage: #example
Title: "Lab Order Service Request"
Description: ""
* status = #active
* intent = #order
* subject = Reference(HIVPatientExample)
* authoredOn = "2022-07-22"
* reasonCode.coding.code = #coded-reason
* reasonCode.coding.system = "http://openhie.org/fhir/lab-integration/vl-reason-code"
* requester = Reference(FacilityPractitionerExample)
* specimen = Reference(LabSpecimenExample)

Instance: FacilityPractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "Facility Practitioner"
Description: ""
* name.given = "Peter"
* name.family = "Mvumbi"
* telecom.system = #phone
* telecom.value = "+1234567890"

Instance: LabSpecimenExample
InstanceOf: Specimen
Usage: #example
Title: "Lab Specimen Example"
Description: ""
* type.coding.code = #123
* type.coding.system = "http://openhie.org/fhir/lab-integration/specimen-type-code"
* collection.collectedDateTime = "2022-07-22"
