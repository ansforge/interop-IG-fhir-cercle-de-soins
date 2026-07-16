Logical: CDSCercleSoins
Id: cds-cercle-soins
Title: "CDS Cercle Soins"
Description: "Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne."

* ^status = #draft
* . ^short = "Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne."
* . ^definition =  "Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne."
* . ^comment = "Flux 1, flux 2, flux 3, flux 4"
* idCercleSoins 1..1 Identifier "Identifiant du cercle de soins"
* dateCreation 0..1 date "Date de création du cercle de soins"
* dateMAJ 0..1 date "Date de mise à jour du cercle de soin." 
* dateFin 0..1 date "Date de fin d'existence du cercle de soins."
* statut 0..1 Coding "Statut du cercle de soin."

* idCercleSoins ^mustSupport = true
* dateCreation ^mustSupport = true
* dateMAJ ^mustSupport = true
* dateFin ^mustSupport = true
* statut ^mustSupport = true

* CDSPersonnePriseCharge 1..1 cds-personne-prise-charge "Lien vers le concept Personne Prise Charge"
* CDSMembreCercleSoins 1..* cds-membre-cercle-soins "Lien vers le concept Membre Cercle Soins"

// ===========================================================================
// Mapping 
// ===========================================================================

Mapping: CDSCercleSoinsMapping
Id: cds-cercle-soins-mapping
Title: "Mapping Cercle de Soins vers CareTeam"
Source: cds-cercle-soins
Target: "IHECareTeam"

* -> "IHECareteam"

* idCercleSoins -> "IHECareTeam.identifier"
* dateCreation -> "IHECareTeam.period.start"
* dateFin -> "IHECareTeam.period.end"
* CDSPersonnePriseCharge -> "IHECareTeam.subject"
* CDSMembreCercleSoins -> "IHECareTeam.participant"