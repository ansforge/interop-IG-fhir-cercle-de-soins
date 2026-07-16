Logical: CDSProfessionnel
Id: cds-professionnel
Title: "CDS Professionnel"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel
Description: "Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."

* ^status = #draft
* . ^short = "Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."
* . ^definition =  "Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."

* idPP ^mustSupport = true
* typeIdNatPP ^mustSupport = true

* CDSSituationExercice 1..1 cds-situation-exercice "Lien vers le concept Situation Exercice"
* CDSPersonnePhysique 1..1 cds-personne-physique "Lien vers le concept Personne Physique"