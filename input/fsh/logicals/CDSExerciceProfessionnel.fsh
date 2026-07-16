Logical: CDSExerciceProfessionnel
Id: cds-exercice-professionnel
Title: "CDS Exercice Professionnel"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel
Description: "Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."

* ^status = #draft
* . ^short = "Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."
* . ^definition =  "Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."

* civiliteExercice ^mustSupport = true
* nomExercice ^mustSupport = true
* prenomExercice ^mustSupport = true
* profession ^mustSupport = true

* CDSSituationExercice 1..1 cds-situation-exercice "Lien vers le concept Situation Exercice"
* CDSProfessionnel 1..1 cds-professionnel "Lien vers le concept Professionnel"