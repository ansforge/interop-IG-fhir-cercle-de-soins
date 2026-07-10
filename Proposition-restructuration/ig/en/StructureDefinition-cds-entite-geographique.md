# CDS Entite Geographique - Cercle De Soins v2.0.1

## Logical Model: CDS Entite Geographique 

 
L’Entité Géographique (EG) correspond à la notion d’établissement : ** Pour les établissements inscrits au FINESS, cette notion d’établissement résulte du croisement de trois critères : - Un critère géographique : Est un établissement tout lieu dont l’implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d’une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d’établissements que d’implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L’implantation géographique peut-être décrite soit avec l’attribut addresseEG soit au travers de la classe Lieu. - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d’établissements du secteur public qu’il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d’hébergement constituent deux établissements même s’ils sont implantés à la même adresse. - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d’établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s’ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l’EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Usages:**

* Use this Logical Model: [CDS Entite Juridique](StructureDefinition-cds-entite-juridique.md), [CDS Organisation Interne](StructureDefinition-cds-organisation-interne.md) and [CDS Situation Exercice](StructureDefinition-cds-situation-exercice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.cds|current/StructureDefinition/StructureDefinition-cds-entite-geographique.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-cds-entite-geographique.csv), [Excel](../StructureDefinition-cds-entite-geographique.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-entite-geographique",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-geographique",
  "version" : "2.0.1",
  "name" : "CDSEntiteGeographique",
  "title" : "CDS Entite Geographique",
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
  "description" : "L’Entité Géographique (EG) correspond à la notion d’établissement : ** Pour les établissements inscrits au FINESS, cette notion d’établissement résulte du croisement de trois critères : - Un critère géographique : Est un établissement tout lieu dont l’implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d’une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d’établissements que d’implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L’implantation géographique peut-être décrite soit avec l’attribut addresseEG soit au travers de la classe Lieu. - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d’établissements du secteur public qu’il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d’hébergement constituent deux établissements même s’ils sont implantés à la même adresse. - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d’établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s’ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l’EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-geographique",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/EntiteGeographique|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-entite-geographique",
      "path" : "cds-entite-geographique",
      "short" : "L’Entité Géographique (EG) correspond à la notion d’établissement : ** Pour les établissements inscrits au FINESS, cette notion d’établissement résulte du croisement de trois critères : - Un critère géographique : Est un établissement tout lieu dont l’implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d’une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d’établissements que d’implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L’implantation géographique peut-être décrite soit avec l’attribut addresseEG soit au travers de la classe Lieu. - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d’établissements du secteur public qu’il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d’hébergement constituent deux établissements même s’ils sont implantés à la même adresse. - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d’établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s’ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l’EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure",
      "definition" : "L’Entité Géographique (EG) correspond à la notion d’établissement : ** Pour les établissements inscrits au FINESS, cette notion d’établissement résulte du croisement de trois critères : - Un critère géographique : Est un établissement tout lieu dont l’implantation d’activité(s) ou d’équipement(s) est géographiquement distincte d’une autre implantation. Ainsi un Centre Hospitalier Régional comprend autant d’établissements que d’implantations géographiques différentes. Un établissement principal et son établissement secondaire situé à 1 km constituent deux établissements distincts dans FINESS. L’implantation géographique peut-être décrite soit avec l’attribut addresseEG soit au travers de la classe Lieu. - Un critère budgétaire : Pour une même implantation géographique, on distingue autant d’établissements du secteur public qu’il y a de budgets distincts (budget général, budget annexe).Ainsi un ESAT et son foyer d’hébergement constituent deux établissements même s’ils sont implantés à la même adresse. - Un critère d’activité : Pour une même implantation géographique et un même budget, on distingue autant d’établissements que de « catégorie d’établissement » décrivant l’activité principale autorisée.Ainsi un centre hospitalier et son EHPAD, financés par le même budget, constituent deux établissements même s’ils sont implantés à la même adresse.** Pour les entreprises inscrites dans le SIRENE, l’EG correspond à un établissement de la personne morale, elle est identifiée par un numéro Siret.Synonymes: Etablissement, structure"
    },
    {
      "id" : "cds-entite-geographique.numFINESS",
      "path" : "cds-entite-geographique.numFINESS",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-geographique.numSiret",
      "path" : "cds-entite-geographique.numSiret",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-geographique.identifiantEG",
      "path" : "cds-entite-geographique.identifiantEG",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-geographique.idNatStruct",
      "path" : "cds-entite-geographique.idNatStruct",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-geographique.denominationEG",
      "path" : "cds-entite-geographique.denominationEG",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-geographique.boiteLettresMSS",
      "path" : "cds-entite-geographique.boiteLettresMSS",
      "mustSupport" : true
    },
    {
      "id" : "cds-entite-geographique.CDSMembreCercleSoins",
      "path" : "cds-entite-geographique.CDSMembreCercleSoins",
      "short" : "Lien vers le concept Membre Cercle Soins",
      "definition" : "Lien vers le concept Membre Cercle Soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-membre-cercle-soins"
      }]
    },
    {
      "id" : "cds-entite-geographique.CDSOrganisationInterne",
      "path" : "cds-entite-geographique.CDSOrganisationInterne",
      "short" : "Lien vers le concept Organisation Interne",
      "definition" : "Lien vers le concept Organisation Interne",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organisation-interne"
      }]
    },
    {
      "id" : "cds-entite-geographique.CDSSituationExercice",
      "path" : "cds-entite-geographique.CDSSituationExercice",
      "short" : "Lien vers le concept Situation exercice",
      "definition" : "Lien vers le concept Situation exercice",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-situation-exercice"
      }]
    },
    {
      "id" : "cds-entite-geographique.CDSEntiteJuridique",
      "path" : "cds-entite-geographique.CDSEntiteJuridique",
      "short" : "Lien vers le concept Entité Juridique",
      "definition" : "Lien vers le concept Entité Juridique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-juridique"
      }]
    }]
  }
}

```
