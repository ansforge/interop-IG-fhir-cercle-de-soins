# CDS Situation Exercice - Cercle De Soins v2.0.1

## Modèle logique: CDS Situation Exercice 

 
Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS). 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Utilisations:**

* Utilise ce/t/te Modèle logique: [CDS Entite Geographique](StructureDefinition-cds-entite-geographique.md), [CDS Exercice Professionnel](StructureDefinition-cds-exercice-professionnel.md), [CDS Membre Cercle Soins](StructureDefinition-cds-membre-cercle-soins.md) and [CDS Professionnel](StructureDefinition-cds-professionnel.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-situation-exercice)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [SituationExercice](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationExercice.html) 

#### Bindings terminologiques

Cette structure est dérivée de [SituationExercice](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationExercice.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 **Vue différentielle** 

Cette structure est dérivée de [SituationExercice](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationExercice.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [SituationExercice](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-SituationExercice.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-situation-exercice.csv), [Excel](../StructureDefinition-cds-situation-exercice.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-situation-exercice",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-situation-exercice",
  "version" : "2.0.1",
  "name" : "CDSSituationExercice",
  "title" : "CDS Situation Exercice",
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
  "description" : "Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS).",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-situation-exercice",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/SituationExercice|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-situation-exercice",
      "path" : "cds-situation-exercice",
      "short" : "Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS).",
      "definition" : "Caractéristiques de l’exercice d’un professionnel pendant une période déterminée et dans une structure déterminée (à l’exception des remplaçants). Synonymes : Activité (RPPS)."
    },
    {
      "id" : "cds-situation-exercice.role",
      "path" : "cds-situation-exercice.role",
      "mustSupport" : true
    },
    {
      "id" : "cds-situation-exercice.modeExercice",
      "path" : "cds-situation-exercice.modeExercice",
      "mustSupport" : true
    },
    {
      "id" : "cds-situation-exercice.boiteLettresMSS",
      "path" : "cds-situation-exercice.boiteLettresMSS",
      "mustSupport" : true
    },
    {
      "id" : "cds-situation-exercice.CDSMembreCercleSoins",
      "path" : "cds-situation-exercice.CDSMembreCercleSoins",
      "short" : "Lien vers le concept Membre Cercle Soins",
      "definition" : "Lien vers le concept Membre Cercle Soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-membre-cercle-soins"
      }]
    },
    {
      "id" : "cds-situation-exercice.CDSExerciceProfessionnel",
      "path" : "cds-situation-exercice.CDSExerciceProfessionnel",
      "short" : "Lien vers le concept Exercice Professionnel",
      "definition" : "Lien vers le concept Exercice Professionnel",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-exercice-professionnel"
      }]
    },
    {
      "id" : "cds-situation-exercice.CDSEntiteGeographique",
      "path" : "cds-situation-exercice.CDSEntiteGeographique",
      "short" : "Lien vers le concept Entité Géographique",
      "definition" : "Lien vers le concept Entité Géographique",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-geographique"
      }]
    }]
  }
}

```
