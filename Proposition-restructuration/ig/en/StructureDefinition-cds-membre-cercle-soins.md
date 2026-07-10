# CDS Membre Cercle Soins - Cercle De Soins v2.0.1

## Logical Model: CDS Membre Cercle Soins 

 
Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Cercle Soins](StructureDefinition-cds-cercle-soins.md), [CDS Contact](StructureDefinition-cds-contact.md), [CDS Entite Geographique](StructureDefinition-cds-entite-geographique.md), [CDS Organisation Interne](StructureDefinition-cds-organisation-interne.md) and [CDS Situation Exercice](StructureDefinition-cds-situation-exercice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-membre-cercle-soins.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-membre-cercle-soins.csv), [Excel](../StructureDefinition-cds-membre-cercle-soins.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-membre-cercle-soins",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-membre-cercle-soins",
  "version" : "2.0.1",
  "name" : "CDSMembreCercleSoins",
  "title" : "CDS Membre Cercle Soins",
  "status" : "draft",
  "date" : "2026-07-10T13:11:38+00:00",
  "publisher" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
  "contact" : [{
    "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-membre-cercle-soins",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base|4.0.1",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-membre-cercle-soins",
      "path" : "cds-membre-cercle-soins",
      "short" : "Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager.",
      "definition" : "Un membre du cercle de soins est une personne (Professionnel ou Personne Tierce) ou une Entité qui fait partie du Cercle de Soins d’un Usager.",
      "comment" : "Flux 1, flux 2, flux 3, flux 4"
    },
    {
      "id" : "cds-membre-cercle-soins.idMembreCercleSoin",
      "path" : "cds-membre-cercle-soins.idMembreCercleSoin",
      "short" : "Identifiant du membre du cercle de soins",
      "definition" : "Identifiant du membre du cercle de soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }],
      "mustSupport" : true
    },
    {
      "id" : "cds-membre-cercle-soins.dateEntreeCercleSoin",
      "path" : "cds-membre-cercle-soins.dateEntreeCercleSoin",
      "short" : "Date de début de participation au cercle de soin de la personne prise en charge.",
      "definition" : "Date de début de participation au cercle de soin de la personne prise en charge.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true
    },
    {
      "id" : "cds-membre-cercle-soins.dateSortieCercleSoin",
      "path" : "cds-membre-cercle-soins.dateSortieCercleSoin",
      "short" : "Date de fin de participation au cercle de soin de la personne prise en charge.",
      "definition" : "Date de fin de participation au cercle de soin de la personne prise en charge.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "date"
      }],
      "mustSupport" : true
    },
    {
      "id" : "cds-membre-cercle-soins.adresse",
      "path" : "cds-membre-cercle-soins.adresse",
      "short" : " \tAdresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) :  \n- rattachée(s) à la situation d'exercice.\n- du contact",
      "definition" : " \tAdresse(s) de télécommunication (numéro de téléphone, adresse email, URL, etc.) :  \n- rattachée(s) à la situation d'exercice.\n- du contact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Adresse"
      }],
      "mustSupport" : true
    },
    {
      "id" : "cds-membre-cercle-soins.CDSCercleSoins",
      "path" : "cds-membre-cercle-soins.CDSCercleSoins",
      "short" : "Lien vers le concept Cercle Soins",
      "definition" : "Lien vers le concept Cercle Soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-cercle-soins"
      }]
    },
    {
      "id" : "cds-membre-cercle-soins.CDSContact",
      "path" : "cds-membre-cercle-soins.CDSContact",
      "short" : "Lien vers le concept Contact",
      "definition" : "Lien vers le concept Contact",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-contact"
      }]
    },
    {
      "id" : "cds-membre-cercle-soins.CDSSituationExercice",
      "path" : "cds-membre-cercle-soins.CDSSituationExercice",
      "short" : "Lien vers le concept Cercle Soins",
      "definition" : "Lien vers le concept Cercle Soins",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-situation-exercice"
      }]
    },
    {
      "id" : "cds-membre-cercle-soins.CDSOrganisationInterne",
      "path" : "cds-membre-cercle-soins.CDSOrganisationInterne",
      "short" : "Lien vers le concept Organisation Interne",
      "definition" : "Lien vers le concept Organisation Interne",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organisation-interne"
      }]
    }]
  }
}

```
