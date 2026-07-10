Logical: CDSPersonnePriseCharge
Id: cds-personne-prise-charge
Title: "CDS Personne Prise Charge"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge
Description: "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager."

* ^status = #draft
* . ^short = "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager."
* . ^definition =  "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager."

* INS ^mustSupport = true
* idPersonnePriseCharge ^mustSupport = true
* adresseCorrespondance ^mustSupport = true
* telecommunication ^mustSupport = true

* CDSCercleSoins 1..1 cds-cercle-soins "Lien vers le concept Cercle Soins"
* CDSPersonnePhysique 1..1 cds-personne-physique "Lien vers le concept Personne Physique"