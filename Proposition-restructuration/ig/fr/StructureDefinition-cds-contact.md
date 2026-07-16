# CDS Contact - Cercle De Soins v2.0.1

## Modèle logique: CDS Contact 

 
Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager 

Le flag Must Support est ici utilisé sur les modèles logiques afin d'indiquer les attributs effectivement utilisés dans le cadre du cas d'usage Cercle de soins.

## Vue logique du concept

🔍+
🔍−
↻
⛶

  

**Utilisations:**

* Utilise ce/t/te Modèle logique: [CDS Membre Cercle Soins](StructureDefinition-cds-membre-cercle-soins.md) and [CDS Personne Physique](StructureDefinition-cds-personne-physique.md)

Vous pouvez également vérifier [les usages dans le FHIR IG Statistics](https://packages2.fhir.org/xig/ans.fhir.fr.cds|current/StructureDefinition/cds-contact)

### Vues formelles du contenu du profil

 [Description des profils, des différentiels, des instantanés et de leurs représentations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

*  [Tableau différentiel (differential)](#tabs-diff) 
*  [Tableau récapitulatif (snapshot)](#tabs-snap) 
*  [Statistiques/Références](#tabs-summ) 
*  [Tous](#tabs-all) 

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

#### Bindings terminologiques (différentiel)

#### Bindings terminologiques

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 **Vue différentielle** 

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

#### Bindings terminologiques (différentiel)

 **Vue d'ensembleView** 

#### Bindings terminologiques

Cette structure est dérivée de [Contact](https://interop.esante.gouv.fr/ig/mos/0.1.0-ballot/StructureDefinition-Contact.html) 

** Résumé **

Obligatoire : 2 éléments(1 élément obligatoire(s) imbriqué(s))
 Must-Support : 3 éléments

 

Autres représentations du profil : [CSV](../StructureDefinition-cds-contact.csv), [Excel](../StructureDefinition-cds-contact.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "cds-contact",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-contact",
  "version" : "2.0.1",
  "name" : "CDSContact",
  "title" : "CDS Contact",
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
  "description" : "Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager",
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
  "type" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-contact",
  "baseDefinition" : "https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact|0.1.0-ballot",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "cds-contact",
      "path" : "cds-contact",
      "short" : "Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager",
      "definition" : "Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager",
      "comment" : "Flux 1, flux 2, flux 3, flux 4"
    },
    {
      "id" : "cds-contact.description",
      "path" : "cds-contact.description",
      "mustSupport" : true
    },
    {
      "id" : "cds-contact.personne",
      "path" : "cds-contact.personne",
      "min" : 1,
      "type" : [{
        "code" : "https://interop.esante.gouv.fr/ig/fhir/cds/StructureDefinition/cds-personne-physique"
      }]
    },
    {
      "id" : "cds-contact.role",
      "path" : "cds-contact.role",
      "short" : "Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager.",
      "definition" : "Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager.\n\nUtilisation des codes :\n* GUARD = Responsable légal\n* QUAL = Personne de confiance\n* CAREGIVER = Aidant",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://mos.esante.gouv.fr/NOS/TRE_R206-TypeContact/FHIR/TRE-R206-TypeContact/?vs"
      }
    },
    {
      "id" : "cds-contact.relation",
      "path" : "cds-contact.relation",
      "mustSupport" : true
    },
    {
      "id" : "cds-contact.CDSMembreCercleSoins",
      "path" : "cds-contact.CDSMembreCercleSoins",
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
