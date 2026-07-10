# Mise à jour du cercle de soins - Cercle De Soins v2.0.1

## Mise à jour du cercle de soins

### Etude fonctionnelle

Le créateur du cercle de soins envoie au gestionnaire du cercle de soins une demande de mise à jour (ajout, mise à jour, suppression, etc) du cercle de soins.

#### Définition du processus collaboratif

**Pré-conditions :**

Le créateur du cercle de soins doit au préalable :

* Etre habilité ;
* Disposer des paramètres de mise à jour du cercle de soins (et en particulier de l’identifiant du patient);
* Dans le cas où il y a plusieurs contributeurs : avoir consulté préalablement la dernière version du cercle de soins de la personne dans le gestionnaire du cercle de soins afin de garantir l’intégrité des informations contenues dans le cercle de soins ;

**Description des actions** :

Processus collaboratif "Mise à jour du cercle de soins"

| | |
| :--- | :--- |
| Saisir la mise à jour | Le créateur du cercle de soins met à jour les informations relatives au cercle de soins qui ont vocation à être partagées. |
| Envoyer la demande de mise à jour | Après validation de la saisie, le créateur du cercle de soins soumet au gestionnaire du cercle de soins une demande de mise à jour du cercle de soins. |
| Mettre à jour le cercle | Le cercle de soins est mis à jour dans le gestionnaire du cercle de soins. |

#### Concepts métiers utilisés dans le flux 4 - MiseJourCercleSoins

Les concepts véhiculés dans ce flux ainsi qu'une correspondance avec les objets du MOS sont présentés ci-dessous :

🔍+
🔍−
↻
⛶

  

Diagramme des concepts contenus dans le flux 4

### Spécifications techniques

#### Interaction RESTFUL

##### Gestion des acteurs

```
Plus d'informations sur les requêtes HTTP en FHIR sur la documentation officielle
https://www.hl7.org/fhir/R4/http.html

```

Les flux de gestion des ressources représentant les acteurs de cercle de soins sont des flux de création et de mise à jour des acteurs respectivement opérés par les requêtes HTTP POST et HTTP PUT.

* Le flux 4a de mise à jour est une requête HTTP PUT reposant sur l’interaction « update » de FHIR sur les ressources FHIR « Patient », « Practitioner », « PractitionerRole », « RelatedPerson » et « Organization ». La mise à jour nécessite de préciser l’identifiant logique de la ressource à mettre à jour.
* Il est fortement recommandé de s’appuyer sur les données de l’Annuaire Santé, rassemblant les données d’identification des professionnels et des structures de santé issues des différents référentiels nationaux.
* la ressource Patient respectant le profil FrCorePatientProfile doit contenir de préférence un identifier, un telecom et une address

Ces requêtes sont envoyées au gestionnaire :

Flux 4a - mise à jour d'un acteur
Si la mise à jour d’un acteur est correctement effectuée, le système gestionnaire retourne un code HTTP 200 OK.

##### Gestion du cercle de soins

* Le flux 4b de mise à jour du cercle de soins sera assuré par une ou plusieurs requêtes HTTP PUT.

**Flux 4b : mise à jour d’un cercle de soins**

Le flux de mise à jour de la ressource « CareTeam » est une requête HTTP PUT. La ressource « CareTeam » constitue le corps de la requête. La mise à jour de la ressource CareTeam nécessite de préciser l’identifiant logique de la ressource à mettre à jour. Ce flux se base sur la requête de la transaction IHE « Update Care Team » [PCC-45] du profil DCTM. La mise à jour du cercle de soins doit pouvoir être réalisée en s’appuyant sur l’interaction « update » de FHIR. Si la mise à jour du cercle de soins est correctement effectuée, le système gestionnaire retourne un code HTTP 200 ok. Pour des informations sur les autres codes HTTP (HTTP status codes) consultez la documentation relative à l’interaction de mise à jour, « update » de l’API REST FHIR.
 A la mise à jour du cercle de soins, le gestionnaire incrémente le numéro de version de la ressource (Careteam.meta.versionID) et indique la date de la mise à jour au niveau de Careteam.meta.LastUpdated.

#### Interaction transaction

Le Bundle [CDS_BundleTransactionMAJ](StructureDefinition-cds-bundle-transaction-maj.md) peut contenir exactement les mêmes ressources que le [CDS_BundleTransactionCreation](StructureDefinition-cds-bundle-transaction-creation.md). Le Bundle contient à minima une ressource CareTeam ; concernant les acteurs, seules la ou les ressources qui doivent être créées ou mises à jour sont inclues dans le bundle. Ce Bundle constitue le corps de la requête HTTP POST.

Flux mise à jour
Pour chaque élément entry de la ressource Bundle, le paramètre request.method sera positionné à PUT pour chaque ressource à mettre à jour ou à POST pour chaque nouvelle ressource à créer sur le serveur :

* Pour la ressource CareTeam, l’attribut request.method sera positionné à PUT,
* Pour les ressources référencées dans CareTeam comme sujet et membres du cercle de soins, elles seront inclues dans le Bundle si elles n’existent pas sur le serveur ; l’attribut request.method sera alors positionné à POST s’il s’agit d’un nouvel acteur ou à PUT pour mettre à jour un membre.

La gestion des droits de création et de modification des acteurs est à la charge du gestionnaire.

