Logical: CDSOrganisationInterne
Id: cds-organisation-interne
Title: "CDS Organisation Interne"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/OrganisationInterne
Description: "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles."

* ^status = #draft
* . ^short = "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles."
* . ^definition =  "La classe Organisation Interne est une classe abstraite qui contient les attributs inhérents et communs aux classes décrivant l’organisation opérationnelle interne d’une EG permettant de délivrer la prestation.Une organisation interne peut être composée d’autres organisations internes. Par exemple, les unités fonctionnelles peuvent être regroupées au sein de services qui peuvent être regroupés en pôles.La description de cette organisation interne de l’EG n’est pas obligatoire. Lorsqu’elle est décrite cette organisation porte les ressources opérationnelles."

* identifiantOI ^mustSupport = true
* nomOI ^mustSupport = true
* boiteLettresMSS ^mustSupport = true

* CDSEntiteGeographique 1..1 cds-entite-geographique "Lien vers le concept Entité Géographique"
* CDSMembreCercleSoins 1..1 cds-membre-cercle-soins "Lien vers le concept Membre Cercle Soins"