# CDS Personne Prise Charge - Cercle De Soins v2.0.1

## Logical Model: CDS Personne Prise Charge 

 
Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Cercle Soins](StructureDefinition-cds-cercle-soins.md) and [CDS Personne Physique](StructureDefinition-cds-personne-physique.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-personne-prise-charge.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-personne-prise-charge.csv), [Excel](../StructureDefinition-cds-personne-prise-charge.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-personne-prise-charge",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-prise-charge",
  "version" : "2.0.1",
  "name" : "CDSPersonnePriseCharge",
  "title" : "CDS Personne Prise Charge",
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
  "description" : "Personne physique bénéficiaire de soins, d'examens, d'actes de prévention ou de services. Selon le contexte, la personne prise en charge peut être un patient ou un usager.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-prise-charge",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePriseCharge|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-personne-prise-charge",
      "path" : "cds-personne-prise-charge"
    },
    {
      "id" : "cds-personne-prise-charge.idPersonnePriseCharge",
      "path" : "cds-personne-prise-charge.idPersonnePriseCharge",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-prise-charge.adresseCorrespondance",
      "path" : "cds-personne-prise-charge.adresseCorrespondance",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-prise-charge.telecommunication",
      "path" : "cds-personne-prise-charge.telecommunication",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-prise-charge.INS",
      "path" : "cds-personne-prise-charge.INS",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-prise-charge.CDSCercleSoins",
      "path" : "cds-personne-prise-charge.CDSCercleSoins",
      "short" : "Lien vers le concept Cercle Soins",
      "definition" : "Lien vers le concept Cercle Soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-cercle-soins"
      }]
    },
    {
      "id" : "cds-personne-prise-charge.CDSPersonnePhysique",
      "path" : "cds-personne-prise-charge.CDSPersonnePhysique",
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
