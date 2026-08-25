# IG N&S - Cercle De Soins v2.0.1

## IG N&S

Cet IG contient toutes les descriptions des standard à [date]. Le reste des informations, propre au cas d'usage doit être complété par l'auteur de l'IG.

### Profils IHE

#### PAM

[IHE PAM](https://www.interopsante.org/f/07f0be9ab9647f72a3e896fd14620eeba4b1f504/Publication-IHE_FRANCE_PAM_National_Extension_v2.11.2.pdf) : le profil Patient Administration Management du domaine ITI (IT Infrastructure) assure l'intégrité et la cohérence des données administratives du patient ainsi que d'autres informations liées au séjour, aux mouvements, aux personnes de confiance, etc. Les systèmes qui mettent en place ce profil partagent en temps réels un état à jour des patients présents et leur localisation dans l'établissement.

##### Maturité et adoption

#### DCTM

[IHE DCTM](https://www.ihe.net/uploadedFiles/Documents/PCC/IHE_PCC_Suppl_DCTM.pdf): le profil Dynamic Care Team Management fournit les structures et transactions permettant la gestion des équipes de soins d’un patient et le partage des données qui y sont liées. Le profil DCTM s’appuie sur le standard FHIR qui utilise les technologies JSON, XML et HTTP. Le profil DCTM décrit les scénarios de création et de mise à jour d’équipes de soins, les scénarios de consultation d’équipes de soins, ainsi que les scénarios d’abonnement aux mises à jour d’une équipe de soins. Les ressources FHIR utilisées pour mettre en œuvre ce profil sont CareTeam et Subscription.

##### Maturité et adoption

Le profil DCTM est récent et encore en phase de test (version 2.0 de décembre 2019 pour concertation publique). Le cycle IHE prévoit que le profil ait été testé au moins à trois connectathons avec un nombre suffisant de participants.

Le profil DCTM est toujours en cours de développement. A l’heure actuelle, aucun éditeur ne déclare avoir intégré ce profil dans un produit. Du point de vue des implémentations de test, aucune société n’a testé ce profil lors de connectathons IHE.

A noter que le sujet au sens large, c’est-à-dire créer et partager des plans de soins personnalisés, a fait l’objet d’un track Care Planning and Management au connectathon FHIR de septembre 20193 et d’un track Care Management au connectathon FHIR de septembre 2020.

### Standard HL7 FHIR

#### Présentation

[FHIR](https://www.hl7.org/fhir/) (Fast Healthcare Interoperability Resources) est un standard élaboré par HL7 qui s’appuie sur un ensemble de ressources, des blocs de données modulaires, qui correspondent à des objets métiers, médicaux ou administratifs. Ces objets sont caractérisés par des éléments de données, des contraintes et des relations avec d’autres objets métiers.

Les ressources et éléments définis dans FHIR sont restreints et ont pour objectif de répondre aux besoins communs, afin de maintenir une simplicité d’utilisation du standard. Pour répondre aux besoins spécifiques, des extensions doivent être créées dans des guides d'implémentations (IG).

Dans le cadre français, l’association [Interop'Sante](https://www.interopsante.org/) a publié un [guide d'implémentation FHIR](https://hl7.fr/ig/fhir/core/) qui définit des profils FHIR pour répondre aux besoins spécifiques du système de santé français. Ces profils adaptent les ressources FHIR standard pour inclure des contraintes et des extensions spécifiques au contexte français.

#### Outillage

Des outils nombreux et matures sont disponibles pour implémenter et tester des systèmes basés sur le standard FHIR, couvrant la validation syntaxique, sémantique et la conformité aux guides d’implémentation.

Parmi les outils facilitant le développement et la validation des ressources FHIR figurent notamment :

* L’extension pour Visual Studio Code [FHIR Tools](https://marketplace.visualstudio.com/items?itemName=Yannick-Lagger.vscode-fhir-tools), facilitant l’édition, la validation et la navigation dans les ressources FHIR ;
* Un ensemble [d’outils de validation](http://hl7.org/fhir/R4/validation.html) permettant de vérifier la conformité des ressources aux spécifications FHIR et aux profils déclarés ;
* Des [serveurs FHIR publics de test](https://confluence.hl7.org/display/FHIR/Public+Test+Servers), dont HAPI, qui constitue à la fois un serveur de référence et une librairie de développement FHIR en Java.

Plusieurs frameworks et plateformes de tests spécialisés complètent cet outillage :

* Inferno : framework extensible de tests automatisés pour HL7® FHIR®, successeur de l’outil Crucible, permettant de définir et d’exécuter des tests rigoureux de conformité ;
* Touchstone (AEGIS) : plateforme d’accélération des implémentations FHIR®, reposant sur le moteur de tests **TestScript**, proposant des serveurs de référence (**WildFHIR**) et un large catalogue de scripts de tests open source ;
* Asbestos (IHE/NIST) : outil de test basé sur **TestScript**, principalement utilisé pour la validation des implémentations des profils IHE, notamment IHE MHD ; son code source est disponible sur GitHub ;
* Matchbox (AHDIS) : moteur de validation open source, disponible sur GitHub, largement utilisé pour vérifier la conformité des ressources FHIR aux profils nationaux et internationaux ;
* ConformanceLab (Interoplab) : plateforme de validation FHIR® permettant aux organisations de configurer, gérer et publier leur propre environnement de tests et de certification basé sur **TestScript**.

La [plateforme Gazelle](https://www.ihe-europe.net/testing-IHE/gazelle) est également utilisée pour tester les ressources FHIR. L'outil [matchbox](https://ahdis.github.io/matchbox/) est accessible via le [service de Validation EVS Client](https://interop.esante.gouv.fr/evs/home.seam). Il permet de vérifier si :

* La structure XML ou JSON des ressources est valide ;
* Les ressources sont conformes aux exigences FHIR ;
* Les ressources sont conformes aux exigences des profils issues des guides d'implémentation.

Pour tester des requêtes HTTP FHIR, il est possible d’utiliser des serveurs publiquement accessibles à des fins de test, notamment HAPI, via des outils de test d’API tels que Postman ou Insomnia. La plateforme Gazelle, via le service de Validation EVS Client, permet aux éditeurs de valider les ressources et les requêtes FHIR en les comparant à des modèles. La plateforme offre également la possibilité d’utiliser des simulateurs FHIR permettant aux éditeurs de tester leur système de façon autonome. Enfin, des évènements de tests, tels que les Projectathons permettent aux éditeurs de tester en situation réelle leur conformité aux spécifications ainsi que leur capacité à échanger avec des partenaires.

#### Maturité et adoption

FHIR a mis en œuvre un [modèle de maturité](https://wiki.hl7.org/index.php?title=FHIR_Maturity_Model) de ressources basé sur le CMM (Capability Maturity Model) afin de fournir aux développeurs une idée de la maturité d’une ressource avant son utilisation et son implémentation. Ci-dessous les 5 niveaux de maturité utilisés par FHIR :

* Niveau 0 : Cette version est comparable à un « draft » ou une version de travail et n’est pas encore prête pour une implémentation.
* Niveau 1 : la ressource ne produit aucun avertissement au cours du processus de « build » (qui peut faire référence aux étapes de la production comme la compilation, le packaging, la distribution, la génération de documentation, le déploiement, etc.). De plus, le groupe de travail dédié estime qu’elle est complète et prête pour une implémentation.
* Niveau 2 : la ressource est testée et échangée avec succès entre au moins trois systèmes développés indépendamment dans un environnement de test comme un [Connectathon](http://wiki.hl7.org/index.php?title=FHIR_Connectathon_12) et dont les résultats ont été reportés au groupe de gestion FHIR.
* Niveau 3 : le respect par la ressource des [normes de qualité](http://wiki.hl7.org/index.php?title=FHIR_Connectathon_12) adoptées par FHIR a été vérifié. De plus, la ressource a fait l'objet d'un « ballot » avec au moins 10 commentaires de développeurs en provenance d'au moins 3 organisations et qui ont donné lieu à au moins une évolution de fond.
* Niveau 4 : la ressource est testée dans son champ d'application et publiée officiellement, par exemple dans un STU ((Standard for Trial Use) signifie que le standard a été testé et implémenté dans des environnements de tests mais qui peut toujours subir des évolutions afin d’atteindre un statut normatif) et mis en œuvre dans plusieurs projets de prototypes. De plus, le groupe de travail estime que la ressource est suffisamment stable pour exiger une consultation des développeurs avant toute modification sans compatibilité ascendante.
* Niveau 5 : la ressource a été publiée en tant que ressource de niveau de maturité 1 ou supérieur au cours d’au moins deux cycles formels de publication, en tant que STU. Elle a par ailleurs été mise en œuvre dans au moins 5 systèmes de production indépendants dans plus d’un pays.

D’une manière générale, le standard FHIR dans sa version R4 offre encore peu de ressources à l’état normatif donc pouvant être considérées comme stables.
 Dans sa version R5, seules 2 ressources supplémentaires sont passées à l'état normatif.

L’ANS exploite les ressources de ce standard dans la majorité des volets de la couche Service disponibles sur [l’espace de Publication](https://esante.gouv.fr/offres-services/ci-sis/espace-publication) du CI-SIS.

#### Transport et interactions FHIR

FHIR propose plusieurs paradigmes d'échange pour répondre à différents cas d'usage :

* [REST](https://build.fhir.org/http.html) – Le plus répandu. Les ressources sont exposées via une API HTTP classique (GET, POST, PUT, DELETE). Adapté aux échanges synchrones et aux architectures web modernes.
* [Messaging](https://build.fhir.org/messaging.html) – Échange de messages structurés (Bundle de type "message") déclenchés par un événement. Proche du fonctionnement HL7 v2, adapté aux workflows asynchrones.
* [Documents](https://build.fhir.org/documents.html) – Échange de documents cliniques complets et signés (Bundle de type "document"), similaire au CDA. Utilisé quand l'intégrité et la persistance du document sont essentielles.
* [Services](https://hl7.org/fhir/R4/services.html) (SOA/RPC) – Appels d'opérations personnalisées.

l'échange et l'interrogation des ressources peut se faire via différentes [interactions](https://build.fhir.org/exchange-module.html)

Différents niveaux [d’interactions](https://hl7.org/fhir/R4/http.html) sont possibles via REST :

* Instance (s’applique à une ressource en particulier) ;
* Type (s’applique à un ensemble de ressources de même type) ;
* Système (s’applique à l’ensemble du système).

Les interactions sont les suivantes :

* Read pour accéder à l’état courant de la ressource. Utilise la méthode HTTP GET.
* Update pour mettre à jour une ressource en connaissant son identifiant. Utilise la méthode HTTP PUT. La nouvelle version de la ressource est envoyée au serveur
* Create pour l’ajout d’une nouvelle ressource sur le serveur. Utilise la méthode HTTP POST.
* Search pour rechercher des ressources d’un type particulier en utilisant des critères de recherche. Utilise la méthode HTTP GET.

Enfin, le corps des requêtes HTTP peut être formaté en XML, JSON ou RDF (seul le format TURTLE est supporté).

### openEHR

#### Description

openEHR est un programme géré par l’[openEHR Foundation](https://openehr.org/) qui s’appuie sur des standards existants du domaine de la santé. L’approche d’openEHR s’inscrit dans une architecture orientée service et décrit un modèle d’information qui définit des structures logiques pour échanger les données démographiques et celles liées aux dossiers de santé informatisés. La spécification se décompose en plusieurs volets :

* openEHR platform architecture définit le modèle de données de référence ;
* Terminology regroupe les terminologies internes à openEHR ainsi que du vocabulaire provenant de différents organismes de standardisation. I
* Implementation Technology Specification compose les spécifications formelles d’openEHR dans divers langages de programmation, API et schémas. Il s’agit d’une base pour la mise en œuvre de la plate-forme openEHR Health Computing, de l’un de ses composants, des applications ou des outils clients.
* Conformance donne une définition formelle des notions utilisées par la plateforme openEHR et décrit comment tester cette plateforme.
* openEHR REST API s’appuie sur les méthodes et codes HTTP pour spécifier les interactions entre les systèmes qui implémentent l’architecture openEHR.

#### Maturité et adoption

L’architecture décrite par openEHR fait l’objet du standard [ISO 13606-2](https://www.iso.org/fr/standard/50119.html?__cf_chl_f_tk=keH71qZLpdX3eNwu0tQSQubZq147XS5eVCgmfIglkzw-1782895915-1.0.1.1-JW66w0w8cc0LGKsLd2Bf3j0FqiJ.qs0ZoXDWxxNtvIs) : « Informatique de santé – Communication du dossier de santé informatisé – Partie 2: Spécification d'échange d'archétype ». Ce standard a été initialement publié en 2008. Une révision a été approuvée en 2019 et de manière générale, le standard est considéré comme stable.

Plusieurs gouvernements se sont appuyés sur l’architecture openEHR pour spécifier leurs programmes nationaux de santé numérique.

