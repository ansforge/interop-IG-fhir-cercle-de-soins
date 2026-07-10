Logical: CDSSituationExercice
Id: cds-situation-exercice
Title: "CDS Situation Exercice"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationExercice
Description: "Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS)."

* ^status = #draft
* . ^short = "Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS)."
* . ^definition =  "Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS)."

* modeExercice ^mustSupport = true
* role ^mustSupport = true
* boiteLettresMSS ^mustSupport = true

* CDSMembreCercleSoins 1..1 cds-membre-cercle-soins "Lien vers le concept Membre Cercle Soins"
* CDSExerciceProfessionnel  1..1 cds-exercice-professionnel "Lien vers le concept Exercice Professionnel"
* CDSEntiteGeographique 0..1 cds-entite-geographique "Lien vers le concept Entité Géographique"