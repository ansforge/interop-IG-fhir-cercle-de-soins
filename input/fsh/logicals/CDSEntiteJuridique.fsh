Logical: CDSEntiteJuridique
Id: cds-entite-juridique
Title: "CDS Entite Juridique"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique
Description: "L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren."

* ^status = #draft
* . ^short = "L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren."
* . ^definition =  "L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren."

* numFINESS ^mustSupport = true 
* numSiren ^mustSupport = true
* idNatStruct ^mustSupport = true
* identifiantEJ ^mustSupport = true
* raisonSociale ^mustSupport = true
* boiteLettresMSS ^mustSupport = true

* CDSEntiteGeographique 0..* cds-entite-geographique "Lien vers le concept Entité Géographique"