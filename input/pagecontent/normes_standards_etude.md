### Les standards

#### Profils IHE : PAM

[Présentation générale du profil](normes_standards_ig_annexe.html#pam)

L’extension française du profil PAM a été étudiée dans le cadre de la présente étude. Le périmètre de ce profil couvre les échanges intra-hospitaliers des identités, venues et mouvements de patients, les échanges inter-établissements des identités et venues et la diffusion d’identités vers une communauté d’établissements et de professionnels de santé. Les objectifs sont donc d’une part de notifier les identités des patients et d’autre part, de notifier les venues et mouvements.

##### Mapping données métiers - éléments techniques

Ce mapping n'est pas exhaustif et peut ne pas refléter une correspondance exacte

|Concept Métier|Segment HL7v2|Commentaire|
|--------------|-------------|-----------|
|[PersonnePriseCharge](StructureDefinition-cds-personne-prise-charge.html)|PID|Segment d'identification patient|
|[Professionnel](StructureDefinition-cds-professionnel.html)|ROL|Précise la fonction (rôle) d'un intervenant médical en relation avec le patient|
|[Contact](StructureDefinition-cds-contact.html)|NK1|Décrit les personnes à prévenir ou les personnes de confiance, mais ne permet pas de décrire les notions d'aidant et de responsable légal|
|[EntiteGeographique](StructureDefinition-cds-entite-geographique.html)|Non couvert|Les structures de santé ne sont identifiés dans aucun segment|
|[EntiteJuridique](StructureDefinition-cds-entite-juridique.html)|Non couvert|Les structures de santé ne sont identifiés dans aucun segment|
|[OrganisationInterne](StructureDefinition-cds-organisation-interne.html)|Non couvert|Les unités de soins ne sont identifiées dans aucun segment|
|[MembreCercleSoins](StructureDefinition-cds-membre-cercle-soins.html)|ROL / NK1|Pas de segment dédié ; répartition entre ROL (professionnels) et NK1 (entourage)|
|[CercleSoins](StructureDefinition-cds-cercle-soins.html)|Non couvert||
|[SituationExercice](StructureDefinition-cds-situation-exercice.html)|||
|[ExerciceProfessionnel](StructureDefinition-cds-exercice-professionnel.html)|||

texte d'origine: 

Dans ce profil, les segments ROL et NK1 pourraient être intéressants pour le cas d’usage de la gestion du cercle de soins. En effet, le segment ROL représente un médecin en relation avec le patient et est destiné à préciser la fonction (rôle) d’un intervenant médical en relation avec le patient ; le segment NK1 décrit les personnes à prévenir ou les personnes de confiance.  
Toutefois, les structures de santé et unités de soins, ainsi que les notions de représentant légal et d’aidant décrites dans l’étude métier ne sont identifiées dans aucun segment. PAM est donc adapté aux problématiques de l’identité du patient et de ses déplacements mais pas au cas d’usage de la  gestion du cercle de soins. 

##### Analyse SWOT du standard

<table>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>Forces</b></td>
<td style="background-color:#fbe9e8; color:#a13c37;"><b>Faiblesses</b></td>
</tr>
<tr>
<td style="background-color:#e6eef8;">
- Profil IHE mature et stable, largement implanté dans les établissements de santé (gestion des identités, venues, mouvements)<br>
- Extension française existante, déjà documentée<br>
- Segments ROL (rôle d'un intervenant médical) et NK1 (personnes à prévenir/de confiance) potentiellement réutilisables pour le cercle de soins<br>
- Outillage et adoption marché solides sur son périmètre historique
</td>
<td style="background-color:#fbe9e8;">
- Ne couvre pas les structures de santé, unités de soins, ni les notions de représentant légal / aidant identifiées dans l'étude métier<br>
- Couverture métier du cas d'usage cercle de soins jugée <b>partielle</b><br>
- Nécessiterait des <b>développements supplémentaires importants</b> pour combler les manques
</td>
</tr>
<tr>
<td style="background-color:#e5f3ea; color:#1f6b40;"><b>Opportunités</b></td>
<td style="background-color:#fdf0dd; color:#a3660f;"><b>Menaces</b></td>
</tr>
<tr>
<td style="background-color:#e5f3ea;">
- Réutiliser un standard déjà déployé dans l'écosystème réduit l'effort d'intégration côté éditeurs<br>
- Cohérent avec le principe doctrinal de préférence pour un profil IHE stable
</td>
<td style="background-color:#fdf0dd;">
- Risque de construire une solution avec des extensions non standard faute de couverture native<br>
- Écart croissant avec la dynamique FHIR/DCTM sur ce cas d'usage spécifique
</td>
</tr>

<tr>
<td colspan="2" style="background-color:#ffffff; padding:12px;">
<b>Synthèse</b><br>
Profil adapté à l'identité et aux déplacements du patient, mais pas au cas d'usage de gestion du cercle de soins.
</td>
</tr>

</table>

#### Profils IHE : DCTM

[Présentation générale du profil](normes_standards_ig_annexe.html#dctm)

Le profil DCTM décrit les scénarios de création et de mise à jour d’équipes de soins, les scénarios de consultation d’équipes de soins, ainsi que les scénarios d’abonnement aux mises à jour d’une équipe de soins.  
Les ressources FHIR utilisées pour mettre en œuvre ce profil sont CareTeam et Subscription.

La ressource CareTeam est contrainte dans le profil DCTM, les contraintes appliquées étant compatibles avec l’étude métier du présent volet. Les flux d’abonnement aux mises à jour de la ressource CareTeam sont optionnels dans le profil DCTM et ne seront pas repris dans cette étude. La ressource Subscription ne sera donc pas exploitée.

Pour obtenir les informations relatives à la maturité et à l'adoption du profil,  [consulter l'IG annexe des Normes et Standards](normes_standards_ig_annexe.html#maturité-et-adoption)

##### Mapping données métiers - éléments techniques

Le profil DCTM décrit la StructureDefinition de la ressource FHIR CareTeam mais ne décrit pas précisément la manière dont les ressources Patient, Practitioner, PractitionerRole, RelatedPerson ou Organization sont référencées.

Ce mapping n'est pas exhaustif et peut ne pas refléter une correspondance exacte

|Concept Métier|Ressource FHIR|Élément CareTeam (DCTM)|
|--------------|--------------|------------------------|
|[CercleSoins](StructureDefinition-cds-cercle-soins.html)|CareTeam||
|[MembreCercleSoins](StructureDefinition-cds-membre-cercle-soins.html)|CareTeam|`CareTeam.participant`|
|[PersonnePriseCharge](StructureDefinition-cds-personne-prise-charge.html)|Patient|`CareTeam.subject`|
|[Professionnel](StructureDefinition-cds-professionnel.html)|Practitioner|`CareTeam.participant.member`|
|[Contact](StructureDefinition-cds-contact.html)|RelatedPerson|`CareTeam.participant.member`|
|[EntiteGeographique](StructureDefinition-cds-entite-geographique.html)|Organization|`CareTeam.participant.member` / `CareTeam.managingOrganization`|
|[EntiteJuridique](StructureDefinition-cds-entite-juridique.html)|Organization|`CareTeam.participant.member` / `CareTeam.managingOrganization`|
|[OrganisationInterne](StructureDefinition-cds-organisation-interne.html)|Organization|`CareTeam.participant.member` / `CareTeam.managingOrganization`|
|[SituationExercice](StructureDefinition-cds-situation-exercice.html)|||
|[ExerciceProfessionnel](StructureDefinition-cds-exercice-professionnel.html)|||

##### Mise en oeuvre

Pour la mise en œuvre du profil IHE DCTM pour le besoin d’interopérabilité « Cercle de soins » : 

- L’acteur « Créateur » doit supporter le profil IHE DCTM en tant que Care Team Contributor.
- L’acteur « Consommateur » doit supporter le profil IHE DCTM en tant que Care Team Contributor.
  L’acteur mettant à jour une ressource CareTeam doit respecter les règles d’intégrité de FHIR.
- L’acteur « Gestionnaire » doit supporter le profil IHE DCTM en tant que Care Team Service.
  Le gestionnaire doit supporter la gestion des versions de la ressource CareTeam.

Les cas d’utilisation sont réalisés à l’aide des transactions décrites dans le profil DCTM comme suit :

- La transaction Update Care Team [PCC-45] pour les cas d’utilisation : « Création du cercle de soins » et « Mise à jour du cercle de soins ».
  La mise à jour de la ressource CareTeam nécessite de préciser l’identifiant logique de la ressource à mettre à jour. En réponse à la mise à jour, le gestionnaire doit indiquer l’élément meta.versionId de la ressource mise à jour.
- Les transactions Search for Care Team [PCC-46] et Retrieve Care Team [PCC-47] pour le cas d’utilisation « Consultation du cercle de soins ».
  La récupération d’une ressource CareTeam correspondant à un identifiant logique peut être réalisée en tenant compte de la version de la ressource et en demandant ainsi la récupération
d’une version précise de cette ressource.

La figure ci-après illustre l’utilisation du profil DCTM pour la gestion du cercle de soins :

<figure style="width:65%; margin:0 auto;">
{% include ns-flux-dctm.svg %}
</figure>

##### Analyse SWOT du standard

<table>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>Forces</b></td>
<td style="background-color:#fbe9e8; color:#a13c37;"><b>Faiblesses</b></td>
</tr>
<tr>
<td style="background-color:#e6eef8;">
- Répond au besoin métier de gestion du cercle de soins<br>
- S'appuie sur la ressource FHIR CareTeam, avec des transactions dédiées (Update/Search/Retrieve Care Team)<br>
- StructureDefinition disponible → outil de validation possible<br>
- Cohérent avec la doctrine CI-SIS (préférence pour un profil IHE)
</td>
<td style="background-color:#fbe9e8;">
- Profil récent, encore en phase de test / <i>trial implementation</i><br>
- Aucun éditeur ne déclare l'avoir intégré à ce jour ; aucune société ne l'a testé en connectathon<br>
- Pas d'outil de validation disponible pour les transactions<br>
- Documentation non encore stabilisée
</td>
</tr>
<tr>
<td style="background-color:#e5f3ea; color:#1f6b40;"><b>Opportunités</b></td>
<td style="background-color:#fdf0dd; color:#a3660f;"><b>Menaces</b></td>
</tr>
<tr>
<td style="background-color:#e5f3ea;">
- HL7 organise des sessions de test régulières qui devraient faire évoluer rapidement la ressource CareTeam<br>
- Une mise en œuvre française pourrait nourrir le retour d'expérience de la communauté IHE internationale<br>
- Dynamique existante autour du Care Planning/Management (tracks connectathon FHIR 2019 et 2020)
</td>
<td style="background-color:#fdf0dd;">
- Forte dépendance à la maturité encore faible de CareTeam (NM2)<br>
- Risque de modifications majeures non rétrocompatibles<br>
- Adoption marché quasi nulle à ce stade → risque d'isolement si l'écosystème international ne suit pas
</td>
</tr>

<tr>
<td colspan="2" style="background-color:#ffffff; padding:12px;">
<b>Synthèse</b><br>
<p> Profil qui n'est pas encore stable du fait de la maturité du standard FHIR, mais couvrant entièrement le besoin. </p> 
<p> Profil nécessitant des contraintes supplémentaires (cardinalité, optionalité, nomenclature).</p> 
</td>
</tr>

</table>

#### FHIR R4

[Présentation générale du standard](normes_standards_ig_annexe.html#présentation).

L'outillage associé à ce standard est également disponible dans la [partie dédié de l'IG annexe](normes_standards_ig_annexe.html#outillage).

Il convient de souligner que, bien que le standard HL7 FHIR dispose à ce jour d’une version R5, les ressources présentées dans la suite du document s’appuient sur la version R4, conformément à la stratégie nationale en vigueur. Cette stratégie relative au choix des versions FHIR a été définie dans le cadre de travaux conduits conjointement par Interop’Santé et l’Agence du Numérique en Santé en 2023-2024, puis validée à l’issue d’une [concertation](https://participez.esante.gouv.fr/project/fhir-r5-ou-r4/presentation/presentation) portée par l’ANS.

Pour plus d'info sur la maturité et l'adoption du standard dans l'écosystème, consulter la [partie maturité et adoption de l'IG N&S](blabla)

**Ressources FHIR concernées**

L’analyse des ressources FHIR « métier » pouvant être appliquées au contexte de la gestion du cercle de soins montre que ce standard couvre la grande majorité des informations identifiées dans l’étude métier. Les informations non couvertes font l’objet d’extensions des ressources FHIR dans le cas où celles-ci sont adaptées pour mettre en œuvre les spécifications d’interopérabilité pour ce besoin.

##### Mapping données métiers - éléments techniques

|Concept Métier|Ressource FHIR|Commentaire|
|--------------|--------------|-----------|
|[PersonnePriseCharge](StructureDefinition-cds-personne-prise-charge.html)|[Patient](https://hl7.org/fhir/patient.html)<br>**(NM N)**|Décrit les données démographiques d’un patient. Cette ressource est mise en correspondance avec la classe [PersonnePriseCharge](https://ansforge.github.io/IG-modele-objets-sante/main/ig/StructureDefinition-PersonnePriseCharge.html) dans le Modèle des Objets de Santé|
|[Professionnel](StructureDefinition-cds-professionnel.html)|[Practitioner](https://hl7.org/fhir/practitioner.html)<br>**(NM 3)**|Décrit l’identité d’un professionnel de santé. Cette ressource est mise en correspondance avec la classe [Professionnel](https://ansforge.github.io/IG-modele-objets-sante/main/ig/StructureDefinition-Professionnel.html) du MOS.<br><br>La ressource Practitioner permet de véhiculer les informations définies dans l’étude métier comme nécessaires pour décrire les professionnels de santé membres du cercle de soins.|
|[Contact](StructureDefinition-cds-contact.html)|[RelatedPerson](https://hl7.org/fhir/relatedperson.html)<br>**(NM 2)**|Contient les informations sur une personne impliquée dans les soins d'un patient. Cette personne n’est pas la personne recevant les soins de santé et n’a pas de responsabilité formelle dans le processus de soins. La ressource RelatedPerson répond aux besoins définis dans l’étude métier pour décrire les membres du cercle de soins qui ne sont pas des professionnels de santé, c’est-à-dire les aidants, la personne de confiance ou les représentants légaux.|
|[EntiteGeographique](StructureDefinition-cds-entite-geographique.html)|[Organization](https://hl7.org/fhir/organization.html)<br>**(NM 3)**|Décrit un groupement de personnes ou d'organisations, officiel ou non, formé dans le but de réaliser une certaine forme d'action collective. La ressource Organization comprend par exemple les entreprises, les institutions,les sociétés, les départements, les groupes communautaires, les groupes de pratique de soins de santé, etc. Cette ressource couvre donc la notion d’entité juridique et d'entité géographique (établissement ou de structure sanitaire, médico-sociale et sociale) telle qu’elle est définie dans l’étude métier. Cette ressource couvre également la notion d’unité de soins comme définie dans l’étude métier (unité organisationnelle regroupant des activités de soins de santé au sein d’une entité).<br><br>Par exemple, les unités de soins de néphrologie et d’hématologie peuvent être définies comme des membres du cercle dans la mesure où les patients sont suivis de manière très régulière par les différents professionnels de ces unités pour des gestes techniques récurrents (dialyse, chimiothérapie…), et donc l’ensemble de l’unité de soins peut être considéré comme un membre du cercle.|
|[EntiteJuridique](StructureDefinition-cds-entite-juridique.html)|[Organization](https://hl7.org/fhir/organization.html)<br>**(NM 3)**|Décrit un groupement de personnes ou d'organisations, officiel ou non, formé dans le but de réaliser une certaine forme d'action collective. La ressource Organization comprend par exemple les entreprises, les institutions,les sociétés, les départements, les groupes communautaires, les groupes de pratique de soins de santé, etc. Cette ressource couvre donc la notion d’entité juridique et d'entité géographique (établissement ou de structure sanitaire, médico-sociale et sociale) telle qu’elle est définie dans l’étude métier. Cette ressource couvre également la notion d’unité de soins comme définie dans l’étude métier (unité organisationnelle regroupant des activités de soins de santé au sein d’une entité).<br><br>Par exemple, les unités de soins de néphrologie et d’hématologie peuvent être définies comme des membres du cercle dans la mesure où les patients sont suivis de manière très régulière par les différents professionnels de ces unités pour des gestes techniques récurrents (dialyse, chimiothérapie…), et donc l’ensemble de l’unité de soins peut être considéré comme un membre du cercle.|
|[OrganisationInterne](StructureDefinition-cds-organisation-interne.html)|[Organization](https://hl7.org/fhir/organization.html)<br>**(NM 3)**|Décrit un groupement de personnes ou d'organisations, officiel ou non, formé dans le but de réaliser une certaine forme d'action collective. La ressource Organization comprend par exemple les entreprises, les institutions,les sociétés, les départements, les groupes communautaires, les groupes de pratique de soins de santé, etc. Cette ressource couvre donc la notion d’entité juridique et d'entité géographique (établissement ou de structure sanitaire, médico-sociale et sociale) telle qu’elle est définie dans l’étude métier. Cette ressource couvre également la notion d’unité de soins comme définie dans l’étude métier (unité organisationnelle regroupant des activités de soins de santé au sein d’une entité).<br><br>Par exemple, les unités de soins de néphrologie et d’hématologie peuvent être définies comme des membres du cercle dans la mesure où les patients sont suivis de manière très régulière par les différents professionnels de ces unités pour des gestes techniques récurrents (dialyse, chimiothérapie…), et donc l’ensemble de l’unité de soins peut être considéré comme un membre du cercle.|
|[MembreCercleSoins](StructureDefinition-cds-membre-cercle-soins.html)|CareTeam.participant|Élément de la ressource CareTeam.|
|[CercleSoins](StructureDefinition-cds-cercle-soins.html)|[CareTeam](https://hl7.org/fhir/careteam.html)<br>**(NM 2)**|Inclut l’ensemble des personnes et organisations qui participent ou prévoient de participer à la coordination des soins autour d’un patient et aux prestations de soins pour ce patient.<br><br>Les éléments suivants sont particulièrement intéressants et adaptés aux besoins décrits dans l’étude métier :<br><br>- **Status** : état courant de la ressource.<br>- **Subject** : référence à l’objet de l’équipe de soins (patient).<br>- **Period** : définit la période pendant laquelle l’équipe de soins intervient.<br>- **Participant** : définit les membres de l’équipe, notamment :<br>&nbsp;&nbsp;- **Member** : référence aux membres de l’équipe de soins (Patient, Practitioner, PractitionerRole, RelatedPerson, Organization).<br>&nbsp;&nbsp;- **Period** : période pendant laquelle le membre intervient dans le Cercle de Soins.|
|[SituationExercice](StructureDefinition-cds-situation-exercice.html)|[PractitionerRole](https://hl7.org/fhir/practitionerrole.html)<br>**(NM 2)**|Détaille les rôles et spécialités qu'un praticien peut exercer dans différents services d’une organisation pendant une durée déterminée. Cette ressource est mise en correspondance avec les classes [ExerciceProfessionnel](https://ansforge.github.io/IG-modele-objets-sante/main/ig/StructureDefinition-ExerciceProfessionnel.html) et [SituationExercice](https://ansforge.github.io/IG-modele-objets-sante/main/ig/StructureDefinition-SituationExercice.html) du MOS.<br><br>La ressources PractitionerRole permet de véhiculer les informations définies dans l’étude métier comme nécessaires pour décrire les professionnels de santé membres du cercle de soins|
|[ExerciceProfessionnel](StructureDefinition-cds-exercice-professionnel.html)|[PractitionerRole](https://hl7.org/fhir/practitionerrole.html)<br>**(NM 2)**|Détaille les rôles et spécialités qu'un praticien peut exercer dans différents services d’une organisation pendant une durée déterminée. Cette ressource est mise en correspondance avec les classes [ExerciceProfessionnel](https://ansforge.github.io/IG-modele-objets-sante/main/ig/StructureDefinition-ExerciceProfessionnel.html) et [SituationExercice](https://ansforge.github.io/IG-modele-objets-sante/main/ig/StructureDefinition-SituationExercice.html) du MOS.<br><br>La ressources PractitionerRole permet de véhiculer les informations définies dans l’étude métier comme nécessaires pour décrire les professionnels de santé membres du cercle de soins|
|*|[Bundle](https://www.hl7.org/fhir/bundle.html)<br>**(NM N)**|Un document FHIR est généré à partir de plusieurs ressources, contenues dans une ressource appelée Bundle (bouquet de ressources). Ce bouquet rassemble de manière indépendante ces ressources, c’est-à-dire qu’elles peuvent être consultées directement en utilisant l’API Restful de FHIR.<br><br>L’utilisation de la ressource Bundle est particulièrement pertinente lorsque le système cible retourne un ensemble d’instances de ressources ou lorsque plusieurs ressources doivent être soumises en même temps pour permettre l’établissement de liens (référence) entre elles|

##### Description du workflow

Les informations concernant le transport et les interactions FHIR sont disponibles dans [l'IG annexe](normes_standards_ig_annexe.html#transport-et-interactions-fhir).

###### Création d’un cercle de soins

<figure style="width:65%; margin:0 auto;">
{% include ns-flux-crea.svg %}
</figure>

Le créateur envoie par POST la demande de création de cercle de soins constituée d’une ressource « Bundle » de type « transaction » contenant la ressource « CareTeam » et les ressources
correspondant aux membres du cercle de soins (« Patient », « Practitioner », « PractitionerRole », « RelatedPerson », « Organization »).

Afin d’éviter que deux clients ne puissent créer un cercle de soins pour le même patient, FHIR propose l’interaction « Conditional create » (création conditionnelle) qui permet au client de créer une ressource à condition qu’aucun équivalent de cette ressource n’existe encore sur le serveur. Il faut donc supporter la création conditionnelle ; ceci est à préciser dans l’élément « request » de l’entrée « Patient » du « Bundle ». De la même manière, l’interaction « Conditional Create » est utilisée pour les entrées « RelatedPerson », « Practitioner » et « Organization » de manière à ne pas créer plusieurs fois les mêmes ressources. Les paramètres de recherche utilisés seront précisés ultérieurement.

Si la création du cercle de soins est correctement effectuée, un code HTTP 201 created est retourné. Il est recommandé qu’un Bundle, ayant le même format que celui de la requête de création de cercle de soins, soit renvoyé dans le corps de la réponse. Ce dernier doit contenir les ressources telles qu’elles ont été créées par le gestionnaire ou, a minima, les identifiants logiques des ressources ayant été attribués par le gestionnaire (dans Bundle.entry.fullUrl et/ou Bundle.entry.resource.id).

###### Consultation d’un cercle de soins

<figure style="width:65%; margin:0 auto;">
{% include ns-flux-consult.svg %}
</figure>

Le flux 2 de recherche de cercles de soins est une requête HTTP GET accompagnée des paramètres définis dans l’étude métier de ce volet. Des paramètres de recherche chaînés doivent être définis afin de répondre à ces attentes.

Le paramètre « _include » pourra être utilisé pour demander le renvoi des ressources référencées par les éléments de la ressource « CareTeam », particulièrement par les éléments « subject » et
« participant.member ». Le flux 3 constitue la réponse à la requête GET du flux 2. Lorsque la recherche s’est bien exécutée, le système gestionnaire retourne un code HTTP 200 OK. Le corps de la réponse à la requête est une ressource « Bundle » de type « searchset » encapsulant 0, 1 à plusieurs ressources « CareTeam » répondant aux critères de recherche. Les ressources référencées par les ressources CareTeam retournées sont aussi dans le Bundle s’il a été demandé de les inclure dans la requête GET.

###### Mise à jour d’un cercle de soins

<figure style="width:65%; margin:0 auto;">
{% include ns-flux-maj.svg %}
</figure>

Le flux se compose d’une requête PUT basée sur l’identifiant de la ressource et qui contient la nouvelle version de la ressource. La méthode choisie est l’interaction Update, qui consiste à envoyer une nouvelle version de la ressource en demandant au serveur de remplacer la ressource existante par cette nouvelle version.

Si la mise à jour du cercle de soins est correctement effectuée, le système gestionnaire retourne un code HTTP 200 OK.

##### Analyse SWOT du standard

<table>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>Forces</b></td>
<td style="background-color:#fbe9e8; color:#a13c37;"><b>Faiblesses</b></td>
</tr>
<tr>
<td style="background-color:#e6eef8;">
- Couvre nativement la majorité des besoins métier via ses ressources (Patient, Practitioner, PractitionerRole, RelatedPerson, Organization, CareTeam, Bundle)<br>
- API REST complète (Read/Update/Create/Search) permettant tous les scénarios (création, consultation, mise à jour)<br>
- JSON adapté à la mobilité<br>
- Adoption marché forte, spécifications accessibles gratuitement
</td>
<td style="background-color:#fbe9e8;">
- La ressource centrale CareTeam reste à un <b>niveau de maturité faible (NM2)</b><br>
- Documentation de CareTeam non stabilisée, contrairement aux autres ressources mobilisées
</td>
</tr>
<tr>
<td style="background-color:#e5f3ea; color:#1f6b40;"><b>Opportunités</b></td>
<td style="background-color:#fdf0dd; color:#a3660f;"><b>Menaces</b></td>
</tr>
<tr>
<td style="background-color:#e5f3ea;">
- Montée en puissance générale de FHIR à l'international<br>
- Sessions de tests HL7 continues qui font progresser les spécifications<br>
- Écosystème d'éditeurs déjà large sur les autres ressources FHIR
</td>
<td style="background-color:#fdf0dd;">
- Instabilité persistante de CareTeam → risque de refontes majeures des spécifications d'interopérabilité si adopté seul<br>
- Utiliser FHIR sans profil IHE va à l'encontre du principe doctrinal de minimiser le nombre de standards différents mobilisés
</td>
</tr>

<tr>
<td colspan="2" style="background-color:#ffffff; padding:12px;">
<b>Synthèse</b><br>
Les ressources FHIR identifiées répondent aux besoins identifiés dans l’étude métier. La ressource CareTeam utilisée pour décrire le cercle de soins apparaît comme la ressource centrale adaptée au cas d’usage de la gestion du cercle de soins. 
<p> FHIR décrit également une API REST réutilisant les méthodes HTTP, celle-ci est utilisée dans les scénarios ci-après pour permettre l’interaction entre les différents acteurs impliqués dans le cas d’usage de la gestion du cercle de soins.</p> 
<br>
Ainsi, malgré une bonne couvrance de l'ensemble des flux, l'instabilité de CareTeam introduit un risque d'évolution majeure des spécifications si retenu sans profilage IHE.
</td>
</tr>

</table>

#### openEHR

[Présentation générale du standard](normes_standards_ig_annexe.html#description).

##### Le modèle openEHR

Cette section présente les éléments du [modèle d’information openEHR](https://specifications.openehr.org/releases/RM/latest/ehr.html) pertinents pour le besoin d’interopérabilité de gestion du « cercle de soins »

**[openEHR Demographic](https://specifications.openehr.org/releases/RM/latest/ehr.html#_demographic_data_in_the_ehr) Information Model**

Ce modèle est basé sur les standards ISO 13606-5 (Informatique de santé -- Communication du dossier de santé informatisé -- Partie 5: Spécification d'interfaces) et HL7v3 RIM pour décrire les informations démographiques d’une personne physique. Ce modèle décrit les informations liées à l’identité de la personne, son adresse, ses informations de contact ainsi que ses relations avec d’autres personnes.

Le package Demographic d’OpenEHR contient différentes classes qui permettent de décrire le cas d’usage de la gestion du cercle de soins :

Le package Demographic d’OpenEHR contient différentes classes qui permettent de décrire le cas
d’usage de la gestion du cercle de soins :

- la classe PARTY pour représenter l’usager pour lequel le cercle de soins est défini, ainsi que l’ensemble des membres du cercle, personnes et organisations,
- la classe ROLE pour définir le rôle de chaque acteur,
- la classe ACTOR héritée de la classe PARTY, pour décrire toute entité capable de tenir un rôle ; un acteur peut être une personne, une organisation ou un groupe,
- la classe RELATIONSHIP pour décrire les relations entre les différentes parties,
- la classe GROUP qui est un ensemble de PARTIES réunies pour un objectif commun, par exemple une équipe de soins. 
  Cette classe est particulièrement intéressante pour le cas d’usage de la gestion du cercle de soins, en représentant le groupe « cercle de soins » d’une personne prise en charge. Ce groupe serait constitué d’acteurs (personnes ou organisations) définis par leur rôle et leur lien avec la personne prise en charge.

##### Mapping données métiers - éléments techniques

Ce mapping n'est pas exhaustif et peut ne pas refléter une correspondance exacte

|Concept Métier|Classe openEHR|Commentaire|
|--------------|--------------|-----------|
|[CercleSoins](StructureDefinition-cds-cercle-soins.html)|GROUP|Représente le regroupement de PARTIES formé pour un objectif commun (équipe de soins)|
|[MembreCercleSoins](StructureDefinition-cds-membre-cercle-soins.html)|PARTY|Membre du groupe, personne ou organisation|
|[PersonnePriseCharge](StructureDefinition-cds-personne-prise-charge.html)|PARTY|Usager pour lequel le cercle de soins est défini|
|[Professionnel](StructureDefinition-cds-professionnel.html)|ACTOR + ROLE + RELATIONSHIP||
|[Contact](StructureDefinition-cds-contact.html)|ACTOR + ROLE + RELATIONSHIP||
|[EntiteGeographique](StructureDefinition-cds-entite-geographique.html)|ACTOR + ROLE + RELATIONSHIP||
|[EntiteJuridique](StructureDefinition-cds-entite-juridique.html)|ACTOR + ROLE + RELATIONSHIP||
|[OrganisationInterne](StructureDefinition-cds-organisation-interne.html)|ACTOR + ROLE + RELATIONSHIP||
|[SituationExercice](StructureDefinition-cds-situation-exercice.html)|||
|[ExerciceProfessionnel](StructureDefinition-cds-exercice-professionnel.html)|||

##### L’API REST d’openEHR

Cette [API](https://specifications.openehr.org/releases/ITS-REST/Release-1.0.1/) s’appuie sur les méthodes et codes HTTP tels que définis dans la recommandation RFC 7231.

Les méthodes suivantes sont pertinentes pour notre cas d’usage :

- La méthode POST est utilisée pour la création de nouveaux objets ;
- La méthode GET est utilisée pour récupérer des objets par leur ID ou bien pour former une recherche sur un type d’objet particulier ;
- La méthode PUT est utilisée pour mettre à jour un objet existant connaissant son identifiant.

Pour le corps des requêtes, les formats XML et JSON sont supportés.  
Les en-têtes HTTP utilisés sont pour la plupart ceux décrits par HTTP mais des en-têtes spécifiques à openEHR ont également été spécifiés pour permettre d’échanger des informations liées au contrôle de version.

Des mécanismes d’authentification et d’autorisation sont également décrits et s’appuient notamment sur la recommandation RFC 7235.

##### Analyse SWOT du standard

<table>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>Forces</b></td>
<td style="background-color:#fbe9e8; color:#a13c37;"><b>Faiblesses</b></td>
</tr>
<tr>
<td style="background-color:#e6eef8;">
- Standard considéré comme <b>stable</b> (ISO 13606-2, révisé en 2019)<br>
- Modèle Demographic riche : classes PARTY, ROLE, ACTOR, RELATIONSHIP, et surtout <b>GROUP</b> (directement pertinente pour représenter un « cercle de soins »)<br>
- API REST avec gestion de version des objets<br>
- Déjà utilisé par plusieurs programmes nationaux de santé numérique à l'étranger
</td>
<td style="background-color:#fbe9e8;">
- L'alignement du modèle avec la ressource FHIR CareTeam est <b>en cours d'étude</b>, non finalisé<br>
- Maturité insuffisante pour ce cas d'usage précis en l'état actuel<br>
- Pas d'outillage de test formalisé pour ce standard<br>
- Aucune mise en œuvre du cas d'usage identifiée
</td>
</tr>
<tr>
<td style="background-color:#e5f3ea; color:#1f6b40;"><b>Opportunités</b></td>
<td style="background-color:#fdf0dd; color:#a3660f;"><b>Menaces</b></td>
</tr>
<tr>
<td style="background-color:#e5f3ea;">
- Les travaux de révision en cours (alignement sur CareTeam) pourraient combler l'écart à moyen terme<br>
- Crédibilité internationale croissante du standard dans les systèmes nationaux de santé
</td>
<td style="background-color:#fdf0dd;">
- Écosystème CI-SIS déjà structuré autour de FHIR/IHE → introduire openEHR ajouterait un standard supplémentaire, contraire au principe doctrinal de sobriété technologique<br>
- Dépendance à l'issue de travaux de révision non pilotés par la France
</td>
</tr>

<tr>
<td colspan="2" style="background-color:#ffffff; padding:12px;">
<b>Synthèse</b><br>
Le package Demographic d’OpenEHR contient l’ensemble des notions décrites dans l’étude métier de la gestion du cercle de soins. Aujourd’hui, une révision de ce package est envisagée, en particulier pour prendre en compte la problématique de l’équipe de soins en s’alignant à la ressource FHIR CareTeam ; <br>
Ce travail <a href="[spe_synthese.html](https://discourse.openehr.org/t/revision-of-the-clinical-demographic-archetypes/367)">est en cours</a>. La possibilité d’adaptation d’OpenEHR au cas d’usage de la gestion du cercle de soins n’a donc pas encore atteint le niveau de maturité nécessaire.
<br>
Ainsi c'est un modèle pertinent sur le fond, mais dont la mise en œuvre est <b>prématurée</b> pour ce cas d'usage.
</td>
</tr>

</table>