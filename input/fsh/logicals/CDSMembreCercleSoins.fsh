Logical : CDSMembreCercleSoins
Id : cds-membre-cercle-soins
Title : "CDS Membre Cercle Soins"
Description : "Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager."

* ^status = #draft
* . ^short = "Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager."
* . ^definition =  "Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager."
* . ^comment = "Flux 1, flux 2, flux 3, flux 4"
* idMembreCercleSoin 1..1 Identifier "Identifiant du membre du cercle de soins"
* dateEntreeCercleSoin 1..* date "Date de début de participation au cercle de soin de la personne prise en charge."
* dateSortieCercleSoin 0..* date "Date de fin de participation au cercle de soin de la personne prise en charge."
* adresse 0..1 Adresse " 	Adresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) :  
- rattachée(s) à la situation d'exercice.
- du contact"


* idMembreCercleSoin ^mustSupport = true
* dateEntreeCercleSoin ^mustSupport = true
* dateSortieCercleSoin ^mustSupport = true
* adresse ^mustSupport = true

* CDSCercleSoins 1..1 cds-cercle-soins "Lien vers le concept Cercle Soins"
* CDSContact 0..1 cds-contact "Lien vers le concept Contact"
* CDSSituationExercice 0..1 cds-situation-exercice "Lien vers le concept Cercle Soins"
* CDSOrganisationInterne 0..1 cds-organisation-interne "Lien vers le concept Organisation Interne"