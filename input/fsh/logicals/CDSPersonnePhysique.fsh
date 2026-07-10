Logical: CDSPersonnePhysique
Id: cds-personne-physique
Title: "CDS Personne Physique"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique
Description: "Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile."

* ^status = #draft
* . ^short = "Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile."
* . ^definition =  "Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile."

* civilite ^mustSupport = true
* nomFamille ^mustSupport = true
* prenom ^mustSupport = true
* sexe ^mustSupport = true
* langueParlee ^mustSupport = true
* situationFamiliale ^mustSupport = true
* dateNaissance ^mustSupport = true
* lieuNaissance ^mustSupport = true
* paysResidence ^mustSupport = true

* CDSContact 1..1 cds-contact "Lien vers le concept Contact"
* CDSPersonnePriseCharge 1..1 cds-personne-prise-charge "Lien vers le concept Personne Prise Charge"
* CDSProfessionnel 1..1 cds-professionnel "Lien vers le concept Professionnel"