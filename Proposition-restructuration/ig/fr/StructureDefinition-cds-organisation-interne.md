# CDS Organisation Interne - Cercle De Soins v2.0.1

## Modèle logique: CDS Organisation Interne 

 
La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles. 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Utilisations:**

* Utilise ce/t/te Modèle logique: [CDS Entite Geographique](StructureDefinition-cds-entite-geographique.md) and [CDS Membre Cercle Soins](StructureDefinition-cds-membre-cercle-soins.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-organisation-interne)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

#### Bindings terminologiques

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 **Vue différentielle** 

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [OrganisationInterne](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-OrganisationInterne.html) 

** Résumé **

Obligatoire : 0 élément(2 éléments obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-organisation-interne.csv), [Excel](../StructureDefinition-cds-organisation-interne.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-organisation-interne",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organisation-interne",
  "version" : "2.0.1",
  "name" : "CDSOrganisationInterne",
  "title" : "CDS Organisation Interne",
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
  "description" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles.",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-organisation-interne",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-organisation-interne",
      "path" : "cds-organisation-interne",
      "short" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles.",
      "definition" : "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles."
    },
    {
      "id" : "cds-organisation-interne.identifiantOI",
      "path" : "cds-organisation-interne.identifiantOI",
      "mustSupport" : true
    },
    {
      "id" : "cds-organisation-interne.nomOI",
      "path" : "cds-organisation-interne.nomOI",
      "mustSupport" : true
    },
    {
      "id" : "cds-organisation-interne.boiteLettresMSS",
      "path" : "cds-organisation-interne.boiteLettresMSS",
      "mustSupport" : true
    },
    {
      "id" : "cds-organisation-interne.CDSEntiteGeographique",
      "path" : "cds-organisation-interne.CDSEntiteGeographique",
      "short" : "Lien vers le concept Entité Géographique",
      "definition" : "Lien vers le concept Entité Géographique",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-entite-geographique"
      }]
    },
    {
      "id" : "cds-organisation-interne.CDSMembreCercleSoins",
      "path" : "cds-organisation-interne.CDSMembreCercleSoins",
      "short" : "Lien vers le concept Membre Cercle Soins",
      "definition" : "Lien vers le concept Membre Cercle Soins",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-membre-cercle-soins"
      }]
    }]
  }
}

```
