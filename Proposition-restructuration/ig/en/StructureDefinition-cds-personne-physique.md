# CDS Personne Physique - Cercle De Soins v2.0.1

## Logical Model: CDS Personne Physique 

 
Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Contact](StructureDefinition-cds-contact.md), [CDS Personne Prise Charge](StructureDefinition-cds-personne-prise-charge.md) and [CDS Professionnel](StructureDefinition-cds-professionnel.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-personne-physique.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-personne-physique.csv), [Excel](../StructureDefinition-cds-personne-physique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-personne-physique",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-physique",
  "version" : "2.0.1",
  "name" : "CDSPersonnePhysique",
  "title" : "CDS Personne Physique",
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
  "description" : "Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-physique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/PersonnePhysique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-personne-physique",
      "path" : "cds-personne-physique",
      "short" : "Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile.",
      "definition" : "Une personne physique est un individu titulaire de droits et d'obligations caractérisé par une identité civile."
    },
    {
      "id" : "cds-personne-physique.civilite",
      "path" : "cds-personne-physique.civilite",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.nomFamille",
      "path" : "cds-personne-physique.nomFamille",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.prenom",
      "path" : "cds-personne-physique.prenom",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.sexe",
      "path" : "cds-personne-physique.sexe",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.langueParlee",
      "path" : "cds-personne-physique.langueParlee",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.situationFamiliale",
      "path" : "cds-personne-physique.situationFamiliale",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.dateNaissance",
      "path" : "cds-personne-physique.dateNaissance",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.lieuNaissance",
      "path" : "cds-personne-physique.lieuNaissance",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.paysResidence",
      "path" : "cds-personne-physique.paysResidence",
      "mustSupport" : true
    },
    {
      "id" : "cds-personne-physique.CDSContact",
      "path" : "cds-personne-physique.CDSContact",
      "short" : "Lien vers le concept Contact",
      "definition" : "Lien vers le concept Contact",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-contact"
      }]
    },
    {
      "id" : "cds-personne-physique.CDSPersonnePriseCharge",
      "path" : "cds-personne-physique.CDSPersonnePriseCharge",
      "short" : "Lien vers le concept Personne Prise Charge",
      "definition" : "Lien vers le concept Personne Prise Charge",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-prise-charge"
      }]
    },
    {
      "id" : "cds-personne-physique.CDSProfessionnel",
      "path" : "cds-personne-physique.CDSProfessionnel",
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
