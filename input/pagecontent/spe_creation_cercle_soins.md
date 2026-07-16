{% include svg-interactive-styles.html %}
{% include figure-caption.html %}

### Etude fonctionnelle

Le créateur du cercle de soins envoie au gestionnaire du cercle de soins une demande de création du cercle de soins de la personne.

#### Définition du processus collaboratif

**Pré-conditions :**

Le créateur du cercle de soins doit au préalable :

- Être habilité ;
- Vérifier l’absence du cercle de soins de la personne par le gestionnaire du cercle de soins via une demande de consultation ;
- Disposer des paramètres de création de cercle de soins (et en particulier de l’identifiant du patient).

**Description des actions** :

<figure style="text-align:center">
{% include spe-activity-cds-crea.svg %}
<figcaption> Processus collaboratif "Création du cercle de soins" </figcaption>
</figure>

| Action | Description |
| ----- | ----- |
| Saisir le cercle de soins | Le créateur du cercle de soins saisit les informations relatives au cercle de soins qui ont vocation à être partagées.|
| Envoyer la demande | Après validation de la saisie, le créateur du cercle de soins soumet au gestionnaire du cercle de soins une demande de création du cercle de soins. |
| Créer le cercle de soins  | Le cercle de soins est créé par le gestionnaire du cercle de soins. |

#### Concepts métiers utilisés dans le flux 1 - CreationCercleSoins

Les concepts véhiculés dans ce flux ainsi qu'une correspondance avec les objets du MOS sont présentés ci-dessous :

<figure class="figure svg-wrap" style="width:100%;">
 <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
 <button class="btn btn-light btn-sm svg-zoom-in">🔍+</button>
 <button class="btn btn-light btn-sm svg-zoom-out">🔍−</button>
 <button class="btn btn-light btn-sm svg-zoom-reset">↻</button>
 <button class="btn btn-light btn-sm svg-fullscreen">⛶</button>
 </div>
 <p style="margin: 0; padding: 0;">
    {% include spe-concept-metier-flux1-3.svg %}
 </p>
 <figcaption> Diagramme des concepts contenus dans le flux 1 </figcaption>
</figure>

### Spécifications techniques

#### Interactions RESTFUL

##### Gestion des acteurs

```
Plus d'informations sur les requêtes HTTP en FHIR sur la documentation officielle
https://www.hl7.org/fhir/R4/http.html
```

Les flux de gestion des ressources représentant les acteurs de cercle de soins sont des flux de création et de mise à jour des acteurs respectivement opérés par les requêtes HTTP POST et HTTP PUT 

* Le flux 1a de création d’un acteur est une requête HTTP POST reposant sur l’interaction « create » de FHIR sur les ressources FHIR « Patient », « Practitioner », « PractitionerRole », « RelatedPerson » et « Organization » : 

* Il est fortement recommandé de s’appuyer sur les données de l’Annuaire Santé, rassemblant les données d’identification des professionnels et des structures de santé issues des différents référentiels nationaux.
* la ressource Patient respectant le profil FrCorePatientProfile doit contenir de préférence un identifier, un telecom et une address

Ces requêtes sont envoyées au gestionnaire :

<figure style="text-align:center">
{% include st-flux1a_creation_cds.svg %}
<figcaption> Flux 1a - création d'un acteur </figcaption>
</figure>

Si la création de l’acteur est correctement effectuée, un code HTTP 201 created est retourné.

##### Gestion du cercle de soins

-  Le flux 1b de création du cercle de soins sera assuré par une ou plusieurs requêtes HTTP POST.
  
Comme indiqué précédemment, le pré-requis à la création d’un cercle de soins est la recherche de ce cercle de soins. Si le cercle de soins n’existe pas, il est créé (flux 1b), sinon, il est mis à jour ([flux 4b](spe_mise_jour_cercle_soins.html#spécifications-techniques))

**Flux 1b : Création d’un cercle de soins**

Le flux de création de la ressource « CareTeam » est une requête HTTP POST reposant sur l’interaction « create » de FHIR. La ressource « CareTeam » constitue le corps de la requête. Ce flux se base sur la requête de la transaction IHE « Update Care Team » [PCC-45] du profil DCTM.
Si la création du cercle de soins est correctement effectuée, un code HTTP 201 created est retourné.

#### Interaction transaction

La première étape de la construction de ce flux de création du cercle de soins consiste à organiser son contenu. Plusieurs types de ressources sont présents :

* La ressource CareTeam (profil [CDS_IHECareTeam](StructureDefinition-cds-ihe-careteam.html)),
* La ressource référencée en tant que sujet du Cercle de Soins : la ressource Patient respectant le profil FrCorePatientProfile, contenant de préférence un identifier, un telecom et une address,
* La ou les ressources référencées comme membres du Cercle de Soins, et celles qu’elles référencent, parmi les ressources suivantes :
  * PractitionerRole (profil ASPractitionerRole) pour représenter la situation d’exercice particulière d’un professionnel.
    * Avec Practitioner (profil ASPractitioner) référencée depuis PractitionerRole.practitioner (Exercice professionnel).
  * RelatedPerson (profil [CDS_FrRelatedperson](StructureDefinition-cds-fr-related-person.html)) pour représenter une personne tierce,
  * Organization (profil CDSAsOrganization) pour représenter une entité géographique (EG), une entité juridique (EJ) ou une organisation interne (OI)
  * Ou aucune si le seul membre est la personne prise en charge déjà référencée comme sujet du Cercle de Soins.

Ces ressources sont encapsulées dans une ressource « Bundle » de type « transaction » conforme au profil [CDS_BundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.html). Le Bundle contient à minima une ressource CareTeam. Ce Bundle constitue le corps de la requête HTTP POST.

<div class="figure" style="width:100%;">
    <p>{% include st-crea-cds-trans.svg %}</p>
</div>

Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à POST pour les nouvelles ressources à poster sur le serveur :

* Pour la ressource CareTeam, l’attribut request.method sera positionné à POST,
* Pour les ressources référencées dans CareTeam comme sujet et membres du cercle de soins, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera positionné à POST.

La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.

Si la transaction a été correctement effectuée et donc que la création du cercle de soins est correctement effectuée, un code HTTP 200 ok est retourné . Un Bundle de type transaction-response doit être renvoyé dans le corps de la réponse . Ce dernier doit contenir les ressources telles qu’elles ont été créées par le gestionnaire ou, à minima, les identifiants logiques des ressources ayant été attribués par le gestionnaire (dans Bundle.entry.fullUrl et/ou Bundle.entry.resource.id). 
Sinon, un code HTTP 500 Internal Server Error est retourné avec une ressource OperationOutcome contenant le détail des erreurs et avertissements résultant du traitement des entrées du Bundle.


{% include svg-interactive-script.html %}