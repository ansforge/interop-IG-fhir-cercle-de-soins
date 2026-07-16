# CDS Entite Juridique - Cercle De Soins v2.0.1

## Modèle logique: CDS Entite Juridique 

 
L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Utilisations:**

* Utilise ce/t/te Modèle logique: [CDS Entite Geographique](StructureDefinition-cds-entite-geographique.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-entite-juridique)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

** Résumé **

Must-Support : 6 éléments

 **Vue différentielle** 

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [EntiteJuridique](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-EntiteJuridique.html) 

** Résumé **

Must-Support : 6 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-entite-juridique.csv), [Excel](../StructureDefinition-cds-entite-juridique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-entite-juridique",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-juridique",
  "version" : "2.0.1",
  "name" : "CDSEntiteJuridique",
  "title" : "CDS Entite Juridique",
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
  "description" : "L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-juridique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteJuridique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-entite-juridique",
      "path" : "cds-entite-juridique",
      "short" : "L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren.",
      "definition" : "L’Entité Juridique (EJ) correspond à la notion de personne morale :** Pour les établissements sanitaires, sociaux, médico-sociaux et de formation aux professions de ces secteurs enregistrés dans le FINESS, une EJ détient des droits (autorisations, agréments, conventions, etc.) lui permettant d’exercer ses activités dans des établissements; chaque EJ dispose d’un statut juridique de la personne morale;** Pour les autres types de structures, une EJ est une personne morale inscrite dans le SIRENE, identifiée par son numéro Siren."
    },
    {
      "id" : "cds-entite-juridique.numFINESS",
      "path" : "cds-entite-juridique.numFINESS",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-juridique.numSiren",
      "path" : "cds-entite-juridique.numSiren",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-juridique.idNatStruct",
      "path" : "cds-entite-juridique.idNatStruct",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-juridique.identifiantEJ",
      "path" : "cds-entite-juridique.identifiantEJ",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-juridique.raisonSociale",
      "path" : "cds-entite-juridique.raisonSociale",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-juridique.boiteLettresMSS",
      "path" : "cds-entite-juridique.boiteLettresMSS",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-juridique.CDSEntiteGeographique",
      "path" : "cds-entite-juridique.CDSEntiteGeographique",
      "short" : "Lien vers le concept Entité Géographique",
      "definition" : "Lien vers le concept Entité Géographique",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-geographique"
      }]
    }]
  }
}

```
