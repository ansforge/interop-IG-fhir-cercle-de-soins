# CDS Professionnel - Cercle De Soins v2.0.1

## Logical Model: CDS Professionnel 

 
Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Exercice Professionnel](StructureDefinition-cds-exercice-professionnel.md) and [CDS Personne Physique](StructureDefinition-cds-personne-physique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-professionnel.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-professionnel.csv), [Excel](../StructureDefinition-cds-professionnel.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-professionnel",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-professionnel",
  "version" : "2.0.1",
  "name" : "CDSProfessionnel",
  "title" : "CDS Professionnel",
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
  "description" : "Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-professionnel",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Professionnel|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-professionnel",
      "path" : "cds-professionnel",
      "short" : "Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social.",
      "definition" : "Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social."
    },
    {
      "id" : "cds-professionnel.idPP",
      "path" : "cds-professionnel.idPP",
      "mustSupport" : true
    },
    {
      "id" : "cds-professionnel.typeIdNatPP",
      "path" : "cds-professionnel.typeIdNatPP",
      "mustSupport" : true
    },
    {
      "id" : "cds-professionnel.CDSSituationExercice",
      "path" : "cds-professionnel.CDSSituationExercice",
      "short" : "Lien vers le concept Situation Exercice",
      "definition" : "Lien vers le concept Situation Exercice",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-situation-exercice"
      }]
    },
    {
      "id" : "cds-professionnel.CDSPersonnePhysique",
      "path" : "cds-professionnel.CDSPersonnePhysique",
      "short" : "Lien vers le concept Personne Physique",
      "definition" : "Lien vers le concept Personne Physique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-physique"
      }]
    }]
  }
}

```
