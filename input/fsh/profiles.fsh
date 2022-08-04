Profile: HIVOrganization
Parent: Organization
Id: hiv-organization
Title: "HIV Organization"
Description: "HIV Organization for case report - this represents a health facility"
* address 1..1
* address.country 1..1
* address.state 1..1
* address.district 1..1
* address.city 1..1
* identifier 1..*

Profile: HIVPatient
Parent: Patient
Id: hiv-patient
Title: "HIV Patient"
Description: "This Patient profile allows the exchange of patient information, including all the data associated with HIV patients"
* extension contains
    KeyPopulation named keyPopulation 0..1 MS

* birthDate MS
* name 1..* MS
* gender 1..1 MS
* maritalStatus 1..1 MS
* maritalStatus from VSMaritalStatus

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Slice based on the type of identifier"

* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address ^slicing.description = "Slice based on the type of address"

* address 1..*
* address.country MS
* address.state MS
* address.district MS
* address.city MS

* identifier contains
    art 0..* and
    passport 0..* and
    national 0..* and
    pos 0..*

* identifier[art].value 0..1
* identifier[art].system = "http://openhie.org/fhir/hiv-casereporting/identifier/art"
* identifier[passport].value 0..1
* identifier[passport].system = "http://openhie.org/fhir/hiv-casereporting/identifier/passport"
* identifier[national].value 0..1
* identifier[national].system = "http://openhie.org/fhir/hiv-casereporting/identifier/nid"
* identifier[pos].value 1..1

* managingOrganization 1..1

Extension: KeyPopulation
Id: key-population
Title: "Key population"
Description: "Key population"
* value[x] only CodeableConcept
* valueCodeableConcept from VSKeyPopulation

Profile: ViralLoadSuppressionMostRecentTestDate
Parent: Observation
Id: hiv-viral-load-suppression-most-recent-test-date
Title: "HIV Viral Load Suppression Most Recent Test Date"
Description: "This profile is to determine the date of the HIV Test"
* subject 1..1
* code = CSHIVObsCodes#VL-MOST-RECENT-TEST-DATE "VL most recent test date"
* valueDateTime 1..1

Profile: ViralLoadSuppressionMostRecentTestResult
Parent: Observation
Id: hiv-viral-load-suppression-most-recent-test-result
Title: "HIV Viral Load Suppression Most Recent Test Result"
Description: "This profile is to determine the result of the HIV Test"
* subject 1..1
* code = CSHIVObsCodes#VL-MOST-RECENT-TEST-RESULT "VL most recent test result"
* valueInteger 1..1
* interpretation 1..1 
* interpretation from VSVLInterpretation

Profile: ViralLoadSuppression
Parent: Observation
Id: hiv-viral-load-suppression
Title: "HIV viral load suppression"
Description: "HIV viral load"
* subject 1..1 MS
* code = CSHIVObsCodes#VL-RESULT "Viral load result"
* effectiveDateTime 1..1 MS
* valueInteger 1..1 MS
* interpretation ^slicing.discriminator.type = #pattern
* interpretation ^slicing.discriminator.path = "system"
* interpretation ^slicing.rules = #closed
* interpretation contains
    vlResult 1..1 and
    vlSuppression 1..1
* interpretation[vlResult] from VSVLInterpretation
* interpretation[vlSuppression] from VSVLSuppression
