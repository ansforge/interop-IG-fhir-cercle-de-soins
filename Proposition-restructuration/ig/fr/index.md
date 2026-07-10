# Accueil - Cercle De Soins v2.0.1

## Accueil

 **CDS Implementation Guide**
 This implementation guide contains the profiles to share about a patient CareTeam. 

>  **Attention !** Cet Implementation Guide n'est pas la version courante. La version courante est accessible via l'URL canonique (http://interop.esante.gouv.fr/ig/fhir/cds). 

Le cercle de soins permet d’identifier l’ensemble des intervenants (personnes, professionnels et structures) participant à la prise en charge et aux actions de coordination du parcours de santé de la personne. Le cercle de soins d'une personne peut être échangé pour répondre aux besoins des domaines sanitaire, médico-administratif, médico-social et social.

Le guide d'implementation suit cette structure :

**Contexte métier**

**Spécifications**

**Ressources de conformité, Tests et Annexes**

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex : cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la [PGSSI-S](https://esante.gouv.fr/produits-services/pgssi-s)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](https://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI- SIS).

### Cas d'usages

Cette section présente deux exemples, non exclusifs, de l’utilisation d’un cercle de soins. Ces spécifications ne s’appliquent pas uniquement à ces cas d’usages et peuvent faire intervenir des acteurs différents.

**_Contexte 1_ :** **Une personne, âgée de 75 ans et vivant seule à son domicile, est atteinte de troubles cognitifs et souffre d’une maladie chronique inflammatoire des bronches (BPCO). Elle est suivie tous les mois par son médecin traitant qui dispose d’un appui d'un Dispositif d'Appui à la Coordination (DAC) de son territoire pour la coordination et la prise en charge de son patient. Parmi les actions de coordination mises en place par le médecin traitant et le médecin coordinateur du DAC, une infirmière se rend quotidiennement au domicile de la personne pour l’administration des traitements. De même, une kinésithérapeute passe quotidiennement à son domicile pour maintenir son activité physique et renforcer sa capacité respiratoire.**

_Cas d'usage 1_ : La personne est prise en charge pour la première fois par le DAC, qui crée son cercle de soins dans son outil numérique d'appui à la coordination. Tous les professionnels intervenants auprès de la personne prise en charge sont répertoriés dans le cercle de soins avec leurs coordonnées.

_Cas d’usage 2_ : La personne chute à son domicile et contacte les secours. Elle est prise en charge par une ambulance qui la transporte dans l’unité de soins des urgences d’une structure de santé de son territoire. Le médecin des urgences prend connaissance du cercle de soins de la personne dans le Dossier Patient Informatisé de la structure, ce qui permet à la structure de santé de se mettre en contact avec le médecin traitant de la personne et le DAC pour organiser sa sortie.

_Cas d’usage 3_ : L'infirmière libérale déménage, la personne choisit un nouvel infirmier. Le DAC met à jour le cercle de soins de la personne dans son outil numérique d'appui à la coordination en fonction des nouveaux professionnels intervenants auprès de la personne prise en charge.

Illustration avec un diagramme de séquence interaction :

diagramme de séquence illustrant le contexte 1


Autre illustration du cas d’usage :

diagramme de séquence du cas d'usage


**_Contexte 2_ :** **Une personne, âgée de 62 ans, souffre de diabète et est suivie régulièrement par son diabétologue exerçant au sein d’un cabinet libéral. Un suivi avec un diététicien est également mis en place.**

_Cas d'usage 1_ : La personne est prise en charge pour la première fois par le diabétologue qui crée le cercle de soins dans son outil de gestion de cabinet. Tous les professionnels intervenants auprès de la personne prise en charge sont répertoriés dans le cercle de soins avec leurs coordonnées.

### Définitions et cadre juridique

#### Cercle de soins

Il n’existe pas de définition juridique du cercle de soins en tant que telle. Le « cercle de soins » d’une personne peut être défini comme le regroupement de personnes, professionnels et structures intervenant dans la prise en charge de la personne dans le domaine sanitaire, médico-administratif, médico-social et social. Le « cercle de soins » d'une personne peut donc être constitué des membres de son équipe de soins, d'autres professionnels, de structures, de ses aidants, de sa personne de confiance ou encore de ses représentants légaux.

#### Equipe de soins

La notion d’« équipe de soins » a été définie dans la loi n°2016-41 du 26 Janvier 2016, et dans les textes qui en découlent :

* Décret n°2016-994 du 20 juillet 2016 relatif aux conditions d'échange et de partage d'informations entre professionnels de santé et autres professionnels des champs social et médico-social et à l'accès aux informations de santé à caractère personnel ;
* Décret n°2016-996 du 20 juillet 2016 relatif à la liste des structures de coopération, d'exercice partagé ou de coordination sanitaire ou médico-sociale dans lesquelles peuvent exercer les membres d'une équipe de soins ;
* Décret n°2016-1349 du 10 octobre 2016 relatif au consentement préalable au partage d’informations entre des professionnels ne faisant pas partie de la même équipe de soins ;
* Arrêté du 25 novembre 2016 fixant le cahier des charges de définition de l’équipe de soins visée au 3 de l’article L. 1110-12 du code de la santé publique.

Selon l’article L. 1110-12 du Code de la Santé Publique, l'équipe de soins est un ensemble de professionnels qui participent directement au profit d'un même patient à la réalisation d'un acte diagnostique, thérapeutique, de compensation du handicap, de soulagement de la douleur ou de prévention de perte d'autonomie, ou aux actions nécessaires à la coordination de plusieurs de ces actes, et qui :

1° Soit exercent dans le même établissement de santé, au sein du service de santé des armées, dans le même établissement ou service social ou médico-social mentionné au I de l'article L. 312-1 du code de l'action sociale et des familles ou dans le cadre d'une structure de coopération, d'exercice partagé ou de coordination sanitaire ou médico-sociale figurant sur une liste fixée par décret ;

2° Soit se sont vu reconnaître la qualité de membre de l'équipe de soins par le patient qui s'adresse à eux pour la réalisation des consultations et des actes prescrits par un médecin auquel il a confié sa prise en charge ;

3° Soit exercent dans un ensemble, comprenant au moins un professionnel de santé, présentant une organisation formalisée et des pratiques conformes à un cahier des charges fixé par un arrêté du ministre chargé de la santé.

#### Aidant

On retrouve plusieurs définitions juridiques de l' « aidant » proche des personnes prises en charge dans les différents codes juridiques français (Code de l’action sociale et des familles, Code de la sécurité sociale, Code du Travail…).

Si l'on se réfère à sa définition dans le Code de la santé publique, l’article L1111-6-1 précise le statut de l’aidant naturel comme une personne choisie par la personne aidée pour l’accompagner dans les gestes liés à des soins prescrits par un médecin pour favoriser son autonomie.

#### Personne de confiance

La loi du 4 mars 2002 relative aux droits des malades a introduit la notion de « personne de confiance » de la personne prise en charge dans le droit français.

La loi du 2 février 2016 créant de nouveaux droits en faveur des malades et des personnes en fin de vie est venue en préciser les contours codifiés dans l'article L1111-6 du Code de la santé publique.

L'article L1111-6 du Code de la santé publique précise ainsi que toute personne majeure peut désigner une personne de confiance qui peut être un parent, un proche ou le médecin traitant et qui sera consultée au cas où elle-même serait hors d'état d'exprimer sa volonté et de recevoir l'information nécessaire à cette fin. La personne de confiance rend compte de la volonté de la personne. Son témoignage prévaut sur tout autre témoignage. Cette désignation est faite par écrit et cosignée par la personne désignée. Elle est révisable et révocable à tout moment.

Si le patient le souhaite, la personne de confiance l'accompagne dans ses démarches et assiste aux entretiens médicaux afin de l'aider dans ses décisions.

La désignation de la personne de confiance n’est pas obligatoire. Mais dans le cadre du suivi de son patient, le médecin traitant s’assure que son patient est informé de la possibilité de désigner une personne de confiance. Par ailleurs, lors de toute hospitalisation, il est proposé au malade de désigner une personne de confiance. Cette désignation est valable pour la durée de l’hospitalisation, sauf mention contraire du patient.

La désignation de la personne de confiance s’effectue par écrit, sur papier libre ou dans le cadre de la rédaction de directives anticipées.

#### Responsable légal

Un représentant légal est une personne légalement désignée en vue de représenter et de défendre les intérêts d'une autre. Le représentant légal agit au nom et pour le compte de la personne qu'il représente.

Pour l'enfant mineur, sa représentation légale incombe dans l’immense majorité des cas aux personnes qui exercent l'autorité parentale sur l'enfant (Art. 382 du Code Civil).

Lorsque les titulaires de l'autorité parentale ne peuvent plus l'exercer, la loi a envisagé la situation dans laquelle l'enfant mineur est représenté par un tiers (le tuteur), chargé de représenter et de défendre ses intérêts (Art. 390 à 413 du Code Civil).

Lorsqu'une personne majeure connaît une altération de ses facultés mentales mais aussi corporelles (à la condition qu'elle soit de nature à empêcher l'expression de sa volonté) qui la place dans l'impossibilité de pourvoir seule à ses intérêts, la loi envisage sa protection dans le respect des libertés individuelles selon quatre modes de protection : la sauvegarde de justice, la curatelle, la tutelle et l'habilitation familiale. Dans le cas de la tutelle, la personne majeure est représentée par un tiers (le tuteur), chargé de représenter et de défendre ses intérêts (Art. 440 et suivants du Code Civil).

#### SI DAC et SI Médecin

SI DAC : toute application ou service numérique utilisé par un DAC à des fins de coordination (service numérique de coordination…)

SI Médecin traitant : toute application ou service numérique utilisé par un Médecin (Logiciel de gestion de cabinet, service numérique de coordination…)

#### Echange et partage de données relatives à un cercle de soins

L’échange et le partage de données relatives à un cercle de soins constituent un traitement de données à caractère personnel, qui entre dans le champ d’application du Règlement Général européen de Protection des Données (RGPD).

### Organisation du contexte métier

Le domaine « Cercle de soins » est relatif à la gestion du cercle de soins d’une personne.

🔍+
🔍−
↻
⛶

  

Organisation du contexte métier de l'étude "Cercle de soins"
Le périmètre de l'étude englobe les processus en bleu sur le diagramme de paquetage.

### Acteurs pour l'ensemble des processus

Les acteurs génériques pour cet IG sont :

| | | |
| :--- | :--- | :--- |
| Acteur | Description | Exemples |
| [CDS Consommateur](ActorDefinition-CDS-Consommateur-Actor.md) | Le rôle de consommateur incarné par un système, peut consulter un cercle de soins. | * Dossier patient informatisé
* Système de gestion de laboratoire
* Système d’information radiologique
* Logiciel de gestion de cabinet
* Service numérique d’appui à la coordination
 |
| [CDS Créateur](ActorDefinition-CDS-Createur-Actor.md) | Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne. | * Service numérique d’appui à la coordination (SI DAC, SI Médecin traitant)
* Dossier Patient Informatisé
 |
| [CDS Gestionnaire](ActorDefinition-CDS-Gestionnaire-Actor.md) | Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins, donne accès aux informations en cas de consultation. | * Dossier patient informatisé
* Service numérique de partage de données
 |

### Scénarios d'implémentation

Le schéma d’urbanisation de la gestion du cercle de soins peut être centralisé ou distribué :

* Les cercles de soins des usagers peuvent être stockés et gérés de manière centralisée par un système unique identifié comme gestionnaire du cercle de soins au niveau national ou régional par exemple.
* Les cercles de soins des usagers peuvent être stockés et gérés de manière distribuée. Plusieurs systèmes peuvent ainsi jouer le rôle de gestionnaire du cercle de soins dans un territoire donné. Dans ce cas, des mécanismes d’identification des gestionnaires et des cercles de soins qu’ils gèrent et éventuellement de synchronisation entre eux doivent être mis en place.

Ces spécifications d’interopérabilité s’appliquent quel que soit le schéma d’urbanisation adopté.

### Dépendances










### Propriété intellectuelle

This publication includes IP covered under the following statements.

* ISO maintains the copyright on the country codes, and controls its use carefully. For further details see the ISO 3166 web page: [https://www.iso.org/iso-3166-country-codes.html](https://www.iso.org/iso-3166-country-codes.html)

* [ISO 3166-1 Codes for the representation of names of countries and their subdivisions — Part 1: Country code](http://terminology.hl7.org/6.4.0/CodeSystem-ISO3166Part1.html): [CDS](index.md), [CDSAsOrganization](StructureDefinition-cds-organization.md)... Show 30 more, [CDSBundleResponseRecherche](StructureDefinition-cds-bundle-response-recherche.md), [CDSBundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md), [CDSBundleTransactionMAJ](StructureDefinition-cds-bundle-transaction-maj.md), [CDSCareTeam](StructureDefinition-cds-ihe-careteam.md), [CDSCareTeamEnd](SearchParameter-cds-careteam-end.md), [CDSCareTeamManagingOrganization](SearchParameter-cds-careteam-managing-organization.md), [CDSCareTeamParticipantEnd](SearchParameter-cds-careteam-participant-end.md), [CDSCareTeamParticipantStart](SearchParameter-cds-careteam-participant-start.md), [CDSCareTeamStart](SearchParameter-cds-careteam-start.md), [CDSCercleSoins](StructureDefinition-cds-cercle-soins.md), [CDSContact](StructureDefinition-cds-contact.md), [CDSEntiteGeographique](StructureDefinition-cds-entite-geographique.md), [CDSEntiteJuridique](StructureDefinition-cds-entite-juridique.md), [CDSExerciceProfessionnel](StructureDefinition-cds-exercice-professionnel.md), [CDSFrRelatedPerson](StructureDefinition-cds-fr-related-person.md), [CDSMembreCercleSoins](StructureDefinition-cds-membre-cercle-soins.md), [CDSOrganisationInterne](StructureDefinition-cds-organisation-interne.md), [CDSPatientBirthplace](SearchParameter-cds-patient-birthplace.md), [CDSPersonnePhysique](StructureDefinition-cds-personne-physique.md), [CDSPersonnePriseCharge](StructureDefinition-cds-personne-prise-charge.md), [CDSProfessionnel](StructureDefinition-cds-professionnel.md), [CDSSituationExercice](StructureDefinition-cds-situation-exercice.md), [CDS_Consommateur](ActorDefinition-CDS-Consommateur-Actor.md), [CDS_Createur](ActorDefinition-CDS-Createur-Actor.md), [CDS_Gestionnaire](ActorDefinition-CDS-Gestionnaire-Actor.md), [CareTeamRolesValueSet](ValueSet-careteam-roles-vs.md), [CreateurTransaction-cds](CapabilityStatement-CDSCreateurTransaction.md), [consommateur-cds](CapabilityStatement-CDSConsommateur.md), [createur-restful-cds](CapabilityStatement-CDSCreateurRestful.md) and [gestionnaire-cds](CapabilityStatement-CDSGestionnaire.md)


### Auteurs et contributeurs

| | | |
| :--- | :--- | :--- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |

