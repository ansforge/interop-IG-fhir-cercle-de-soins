{% include figure-caption.html %}
{% include svg-interactive-styles.html %}

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>CDS Implementation Guide</b><br>
This implementation guide contains the profiles to share about a patient CareTeam.
</p>

<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> Cet Implementation Guide n'est pas la version courante. La version courante est accessible via l'URL canonique (http://interop.esante.gouv.fr/ig/fhir/cds).
    </p>
    </blockquote>
</div>

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS">
</div>

Le cercle de soins permet d’identifier l’ensemble des intervenants (personnes, professionnels et structures) participant à la prise en charge et aux actions de coordination du parcours de santé de la personne.
Le cercle de soins d'une personne peut être échangé pour répondre aux besoins des domaines sanitaire, médico-administratif, médico-social et social.

Le guide d'implementation suit cette structure :

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 15px; margin: 20px 0;color: #333333; font-size: 14px;">
<strong>Contexte métier</strong>
<ul style="margin: 10px 0 0 0;">
Le contexte métier de la gestion du cercle de soins, défini sur cette page, présente les <a href="#cas-dusages">cas d'usages</a> les <a href="#définitions-et-cadre-juridique"> définitions et le cadre juridique</a>, l'<a href="#organisation-du-contexte-métier">organisation des processus collaboratifs</a>, les <a href="#acteurs-pour-lensemble-des-processus">acteurs impliqués</a> ainsi que les <a href="#scénarios-dimplémentation">scénarios d'implémentation</a>.
</ul>
</div>

<div style="background-color: #e9edfa; border-left: 4px solid #94aef7; padding: 15px; margin: 20px 0;color: #333333; font-size: 14px;">
<strong>Spécifications</strong>
<ul style="margin: 10px 0 0 0;">

<p>La section <a href="specifications.html">spécifications</a> présente l'étude fonctionnelle et les spécifications techniques associées à chaque processus collaboratif.</p>

<p>L'<strong>étude fonctionnelle</strong> contient notamment la description des activités liées au flux ainsi que les concepts métiers véhiculés.</p>

<p>Les <strong>spécifications techniques</strong> décrivent l'implémentation des flux nécessaires à la gestion du cercle de soins.
Elles s’appuient sur le standard HL7 FHIR et définissent notamment les modèles de données, profils, extensions et interfaces nécessaires aux échanges entre systèmes d'information. Pour les opérations sur les ressources, l’API HTTP REST définie par le standard HL7 FHIR est mise en œuvre. </p>
<p></p>
<p>Une <a href="spe_synthese.html">synthèse des flux et des ressources profilées</a> dans ce volet est également disponible.</p>
</ul>
</div>

<div style="background-color: #f7f2ff; border-left: 4px solid #bd90f8; padding: 15px; margin: 20px 0;color: #333333; font-size: 14px;">
<strong>Ressources de conformité, Tests et Annexes</strong>
<ul style="margin: 10px 0 0 0;">
<p>La section <a href="artifacts.html">Ressources de conformité</a> liste les différents artéfacts supportant les spécifications fonctionnelles et techniques.</p>
<p>La section <a href="tests.html">Tests</a> permet d'accéder aux solutions de tests disponibles pour ce volet.</p>
<p>La section <a href="annexes.html">Annexes</a> permet d'accéder à des ressources complémentaires relatives à la sécurité, aux téléchargements, à la traduction ou à tout autre documentation utile à ce volet.</p>
</ul>
</div>

Les spécifications d'interopérabilité présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d'un système d'information partagé. Il appartient à tout responsable de traitement de s'assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex : cadre juridique, bonnes pratiques de sécurité, ergonomie, accessibilité...).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la [PGSSI-S](https://esante.gouv.fr/produits-services/pgssi-s)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](https://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI- SIS).

{% include acc_contexte-metier.md %}

<br>

### Dépendances

{% lang-fragment dependency-table.xhtml %}

### Propriété intellectuelle

{% lang-fragment ip-statements.xhtml %}

### Auteurs et contributeurs

| Role  | Nom | Organisation |
| --- | --- | --- | --- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |

{% include svg-interactive-script.html %}