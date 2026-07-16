# CDS Cercle Soins - Cercle De Soins v2.0.1

## Logical Model: CDS Cercle Soins 

 
Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Membre Cercle Soins](StructureDefinition-cds-membre-cercle-soins.md) and [CDS Personne Prise Charge](StructureDefinition-cds-personne-prise-charge.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-cercle-soins.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-cercle-soins.csv), [Excel](../StructureDefinition-cds-cercle-soins.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-cercle-soins",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-cercle-soins",
  "version" : "2.0.1",
  "name" : "CDSCercleSoins",
  "title" : "CDS Cercle Soins",
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
  "description" : "Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "France (la)"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "cds-cercle-soins-mapping",
    "uri" : "IHECareTeam",
    "name" : "Mapping Cercle de Soins vers CareTeam"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-cercle-soins",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-cercle-soins",
      "path" : "cds-cercle-soins",
      "short" : "Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne.",
      "definition" : "Le cercle de soins est l'agrégation de membres qui participent à la prise en charge et aux actions de coordination du parcours de santé d’une personne.",
      "comment" : "Flux 1, flux 2, flux 3, flux 4",
      "mapping" : [{
        "identity" : "cds-cercle-soins-mapping",
        "map" : "IHECareteam"
      }]
    },
    {
      "id" : "cds-cercle-soins.idCercleSoins",
      "path" : "cds-cercle-soins.idCercleSoins",
      "short" : "Identifiant du cercle de soins",
      "definition" : "Identifiant du cercle de soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "cds-cercle-soins-mapping",
        "map" : "IHECareTeam.identifier"
      }]
    },
    {
      "id" : "cds-cercle-soins.dateCreation",
      "path" : "cds-cercle-soins.dateCreation",
      "short" : "Date de création du cercle de soins",
      "definition" : "Date de création du cercle de soins",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "cds-cercle-soins-mapping",
        "map" : "IHECareTeam.period.start"
      }]
    },
    {
      "id" : "cds-cercle-soins.dateMAJ",
      "path" : "cds-cercle-soins.dateMAJ",
      "short" : "Date de mise à jour du cercle de soin.",
      "definition" : "Date de mise à jour du cercle de soin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true
    },
    {
      "id" : "cds-cercle-soins.dateFin",
      "path" : "cds-cercle-soins.dateFin",
      "short" : "Date de fin d'existence du cercle de soins.",
      "definition" : "Date de fin d'existence du cercle de soins.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true,
      "mapping" : [{
        "identity" : "cds-cercle-soins-mapping",
        "map" : "IHECareTeam.period.end"
      }]
    },
    {
      "id" : "cds-cercle-soins.statut",
      "path" : "cds-cercle-soins.statut",
      "short" : "Statut du cercle de soin.",
      "definition" : "Statut du cercle de soin.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }],
      "mustSupport" : true
    },
    {
      "id" : "cds-cercle-soins.CDSPersonnePriseCharge",
      "path" : "cds-cercle-soins.CDSPersonnePriseCharge",
      "short" : "Lien vers le concept Personne Prise Charge",
      "definition" : "Lien vers le concept Personne Prise Charge",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-prise-charge"
      }],
      "mapping" : [{
        "identity" : "cds-cercle-soins-mapping",
        "map" : "IHECareTeam.subject"
      }]
    },
    {
      "id" : "cds-cercle-soins.CDSMembreCercleSoins",
      "path" : "cds-cercle-soins.CDSMembreCercleSoins",
      "short" : "Lien vers le concept Membre Cercle Soins",
      "definition" : "Lien vers le concept Membre Cercle Soins",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-membre-cercle-soins"
      }],
      "mapping" : [{
        "identity" : "cds-cercle-soins-mapping",
        "map" : "IHECareTeam.participant"
      }]
    }]
  }
}

```
