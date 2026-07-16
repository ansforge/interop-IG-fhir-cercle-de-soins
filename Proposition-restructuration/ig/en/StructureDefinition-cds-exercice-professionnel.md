# CDS Exercice Professionnel - Cercle De Soins v2.0.1

## Logical Model: CDS Exercice Professionnel 

 
Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Situation Exercice](StructureDefinition-cds-situation-exercice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-exercice-professionnel.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-exercice-professionnel.csv), [Excel](../StructureDefinition-cds-exercice-professionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-exercice-professionnel",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-exercice-professionnel",
  "version" : "2.0.1",
  "name" : "CDSExerciceProfessionnel",
  "title" : "CDS Exercice Professionnel",
  "status" : "draft",
  "date" : "2026-07-16T08:39:52+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-exercice-professionnel",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/ExerciceProfessionnel|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-exercice-professionnel",
      "path" : "cds-exercice-professionnel",
      "short" : "Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné.",
      "definition" : "Informations décrivant notamment la profession exercée, l’identité d’exercice d’un professionnel et le cadre de son exercice (civil, agent public, etc.).Il peut exister plusieurs exercices professionnels pour une personne à un instant donné."
    },
    {
      "id" : "cds-exercice-professionnel.civiliteExercice",
      "path" : "cds-exercice-professionnel.civiliteExercice",
      "mustSupport" : true
    },
    {
      "id" : "cds-exercice-professionnel.nomExercice",
      "path" : "cds-exercice-professionnel.nomExercice",
      "mustSupport" : true
    },
    {
      "id" : "cds-exercice-professionnel.prenomExercice",
      "path" : "cds-exercice-professionnel.prenomExercice",
      "mustSupport" : true
    },
    {
      "id" : "cds-exercice-professionnel.profession",
      "path" : "cds-exercice-professionnel.profession",
      "mustSupport" : true
    },
    {
      "id" : "cds-exercice-professionnel.CDSSituationExercice",
      "path" : "cds-exercice-professionnel.CDSSituationExercice",
      "short" : "Lien vers le concept Situation Exercice",
      "definition" : "Lien vers le concept Situation Exercice",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-situation-exercice"
      }]
    },
    {
      "id" : "cds-exercice-professionnel.CDSProfessionnel",
      "path" : "cds-exercice-professionnel.CDSProfessionnel",
      "short" : "Lien vers le concept Professionnel",
      "definition" : "Lien vers le concept Professionnel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-professionnel"
      }]
    }]
  }
}

```
