# CDS Professionnel - Cercle De Soins v2.0.1

## Modèle logique: CDS Professionnel 

 
Données d’identification pérennes d’une personne physique, qui travaille en tant que professionnel (professionnel enregistré dans RPPS ou ADELI), personnel autorisé ou personnel d’établissement, dans les domaines sanitaire, médico-social et social. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Utilisations:**

* Utilise ce/t/te Modèle logique: [CDS Exercice Professionnel](StructureDefinition-cds-exercice-professionnel.md) and [CDS Personne Physique](StructureDefinition-cds-personne-physique.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-professionnel)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

#### Bindings terminologiques

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 2 éléments

 **Vue différentielle** 

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Professionnel](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Professionnel.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 2 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-professionnel.csv), [Excel](../StructureDefinition-cds-professionnel.xlsx) 



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
  "date" : "2026-07-10T13:11:38+00:00",
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
