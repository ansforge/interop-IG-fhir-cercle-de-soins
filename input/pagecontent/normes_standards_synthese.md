### Synthèse comparative des standards présentés

Cette section présente la comparaison des standards et profils analysés dans les sections précédentes selon des critères d’évaluation provenant des documents suivants :

- La [doctrine du CI-SIS](https://interop.esante.gouv.fr/ig/doctrine/choix-standard.html)
- Le document « Organismes et Standards » qui décrit les organismes producteurs de standards ainsi que la manière dont ces standards sont gérés.
- « [Evaluating HIT Standards]() » document sur la comparaison des standards publiés par l’organisation [HIMSS](https://www.himss.org/)

<br>

#### Maturité technique

<table>
  <thead>
    <tr>
      <th style="background-color:#2c5f8a; color:#ffffff;">Critère d'évaluation</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE PAM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE DCTM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">HL7 FHIR R4</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">openEHR</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Outillage</strong><br><em>(outils de test pour valider l'adhérence au standard)</em></td>
      <td>✅ Outillage mature, hérité de l'écosystème PAM largement déployé</td>
      <td>⚠️ La StructureDefinition de la ressource CareTeam contrainte est disponible → un outil de validation <em>structurelle</em> est possible, mais aucun outillage dédié au profil DCTM lui-même n'existe</td>
      <td>✅ Outillage disponible sur les 6 ressources mobilisées (Patient, Practitioner, PractitionerRole, RelatedPerson, Organization, CareTeam)</td>
      <td>❌ Le développement d'outils de test est identifié comme une <strong>activité future potentielle</strong> seulement : rien de disponible aujourd'hui</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Tests</strong><br><em>(tests sur versions STU et/ou guides normatifs)</em></td>
      <td>✅</td>
      <td>❌ Aucun outil disponible pour valider les <em>transactions</em> du profil ; le profil n'a été testé lors d'<strong>aucun connectathon IHE</strong> à ce jour</td>
      <td>✅ Sessions de test HL7 continues tout au long de l'année sur les ressources concernées</td>
      <td>❌ Pas de démarche de test formalisée</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Stabilité de la documentation</strong></td>
      <td>✅ Profil ancien, stable</td>
      <td>✅ Stable</td>
      <td>⚠️ <strong>Hétérogène selon la ressource</strong> : Patient est normatif (stable) ; Practitioner (NM3), PractitionerRole (NM2), RelatedPerson (NM2) et surtout <strong>CareTeam (NM2, ressource centrale du cas d'usage)</strong> sont à un niveau de maturité qualifié de <strong>faible</strong></td>
      <td>✅ Standard ISO 13606-2 révisé en 2019, considéré globalement comme stable</td>
    </tr>
  </tbody>
</table>

#### Gouvernance

<table>
  <thead>
    <tr>
      <th style="background-color:#2c5f8a; color:#ffffff;">Critère d'évaluation</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE PAM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE DCTM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">HL7 FHIR R4</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">openEHR</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Processus de prise en compte des améliorations</strong></td>
      <td>✅</td>
      <td>✅ Porté par le cycle IHE + les tracks connectathon FHIR (Care Planning 2019, Care Management 2020)</td>
      <td>✅</td>
      <td>✅</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Existence de guides d'implémentation</strong><br><em>Les guides référencent les standards de base avec au moins un cas d'usage et une optionalité sur les paramètres pour permettre les extensions.</em></td>
      <td>✅</td>
      <td>✅ Le profil DCTM constitue lui-même un guide d'implémentation combinant FHIR CareTeam avec cas d'usage et contraintes</td>
      <td>✅</td>
      <td>✅</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Neutralité concurrentielle</strong><br><em>les spécifications ne limitent pas la concurrence et l'innovation</em><br><em>les spécifications sont basées sur des développements scientifiques et technologiques de pointe.</em></td>
      <td>✅</td>
      <td>✅</td>
      <td>❌</td>
      <td>✅</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Qualité</strong><br><em>la qualité est suffisante pour permettre le développement de produits et de services interopérables concurrents</em></td>
      <td>✅</td>
      <td>❌ Non stabilisée (dépendance directe à CareTeam)</td>
      <td>⚠️ <strong>Mixte</strong> : Patient et Organization ✅ stabilisées ; CareTeam, Practitioner, PractitionerRole, RelatedPerson non stabilisées</td>
      <td>❌ Non stabilisée pour ce cas d'usage précis</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Accessibilité des spécifications</strong><br><em>Les spécifications sont disponibles au public à des conditions raisonnables (y compris pour un prix raisonnable ou gratuitement)</em></td>
      <td>✅</td>
      <td>✅</td>
      <td>✅</td>
      <td>✅</td>
    </tr>
  </tbody>
</table>

#### Adoption et usage

<table>
  <thead>
    <tr>
      <th style="background-color:#2c5f8a; color:#ffffff;">Critère d'évaluation</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE PAM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE DCTM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">HL7 FHIR R4</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">openEHR</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Adoption par le marché et utilisation</strong></td>
      <td>✅ Large adoption hospitalière</td>
      <td>❌ <strong>Aucun éditeur ne déclare avoir intégré ce profil</strong> dans un produit à ce jour</td>
      <td>✅ Adoption confirmée sur les 6 ressources mobilisées</td>
      <td>✅ Plusieurs programmes nationaux de santé numérique s'appuient sur openEHR</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Adapté aux dispositifs mobiles</strong></td>
      <td>✅</td>
      <td>✅ S'appuie sur JSON/XML/HTTP (via FHIR)</td>
      <td>✅ JSON particulièrement adapté à la mobilité</td>
      <td>✅ XML et JSON supportés</td>
    </tr>
  </tbody>
</table>

#### Adéquation au cas d'usage

<table>
  <thead>
    <tr>
      <th style="background-color:#2c5f8a; color:#ffffff;">Critère d'évaluation</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE PAM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">IHE DCTM</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">HL7 FHIR R4</th>
      <th style="background-color:#2c5f8a; color:#ffffff;">openEHR</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Couverture métier (cercle de soins)</strong></td>
      <td>⚠️ <strong>Partielle</strong> : segments ROL (rôle d'un intervenant médical) et NK1 (personne de confiance) exploitables, mais <strong>aucun segment</strong> ne couvre les structures de santé, unités de soins, représentant légal ou aidant identifiés dans l'étude métier</td>
      <td>✅ <strong>Complète</strong> : répond pleinement au besoin ; nécessite des contraintes complémentaires (cardinalité, optionalité, nomenclature)</td>
      <td>✅ <strong>Complète</strong> : les 6 ressources couvrent la majorité des informations métier ; le résiduel est traitable par extensions</td>
      <td>⚠️ <strong>Partielle</strong> : la classe GROUP du package Demographic est pertinente pour modéliser le « cercle de soins », mais l'alignement du modèle avec CareTeam est <strong>en cours d'étude</strong>, non finalisé</td>
    </tr>
    <tr>
      <td style="background-color:#eaf2fa;"><strong>Mises en œuvre existantes du cas d'usage (cercle de soins)</strong></td>
      <td>❌</td>
      <td>❌</td>
      <td>❌</td>
      <td>❌</td>
    </tr>
  </tbody>
</table>