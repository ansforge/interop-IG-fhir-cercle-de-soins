{% include figure-caption.html %}
{% include svg-interactive-styles.html %}

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>CDS Implementation Guide</b><br>
This implementation guide contains the profiles to share about a patient CareTeam.
</p>

<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Caution !</b> This Implementation Guide is not the current version. The current version is available here (http://interop.esante.gouv.fr/ig/fhir/cds).
    </p>
    </blockquote>
</div>

<div class="figure" style="width:65%;">
    <img style="height: auto; width: 100%;" src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS">
</div>

The Care Team (Cercle de Soins) identifies all actors (individuals, healthcare professionals and organisations) involved in the care coordination and health journey of a patient. A patient's Care Team can be exchanged to address the needs of the healthcare, administrative, medico-social and social domains.

The implementation guide follows this structure:

<div style="background-color: #e8f4f8; border-left: 4px solid #0077be; padding: 15px; margin: 20px 0;color: #333333; font-size: 14px;">
<strong>Business Context</strong>
<ul style="margin: 10px 0 0 0;">
The business context of Care Team management, described on this page, presents the <a href="#cas-dusages">use cases</a>, the <a href="#définitions-et-cadre-juridique">definitions and legal framework</a>, the <a href="#organisation-du-contexte-métier">organization of collaborative processes</a>, the <a href="#acteurs-pour-lensemble-des-processus">actors involved</a>, as well as the <a href="#scénarios-dimplémentation">implementation scenarios</a>.
</ul>
</div>

<div style="background-color: #e9edfa; border-left: 4px solid #94aef7; padding: 15px; margin: 20px 0;color: #333333; font-size: 14px;">
<strong>Specifications</strong>
<ul style="margin: 10px 0 0 0;">

<p>The <a href="specifications.html">Specifications</a> section presents the functional analysis and the associated technical specifications for each collaborative process.</p>

<p>The <strong>functional analysis</strong> notably describes the activities related to each workflow as well as the business concepts involved.</p>

<p>The <strong>technical specifications</strong> describe the implementation of the workflows required for Care Team management. They are based on the HL7 FHIR standard and define, in particular, the data models, profiles, extensions, and interfaces required for information exchange between information systems. Resource operations are implemented using the HTTP REST API defined by the HL7 FHIR standard.</p>

<p>A <a href="spe_synthese.html">summary of the workflows and profiled resources</a> covered by this implementation guide is also available.</p>
</ul>
</div>

<div style="background-color: #f7f2ff; border-left: 4px solid #bd90f8; padding: 15px; margin: 20px 0;color: #333333; font-size: 14px;">
<strong>Conformance Resources, Testing, and Annexes</strong>
<ul style="margin: 10px 0 0 0;">
<p>The <a href="artifacts.html">Conformance Resources</a> section lists the various artifacts supporting the functional and technical specifications.</p>
<p>The <a href="tests.html">Tests</a> section provides access to the testing solutions available for this implementation guide.</p>
<p>The <a href="annexes.html">Annexes</a> section provides access to additional resources related to security, downloads, translations, and any other documentation relevant to this implementation guide.</p>
</ul>
</div>


The interoperability specifications presented in this guide do not prejudge the conditions of their implementation within a shared information system. It is the responsibility of each data controller to ensure that services using these specifications comply with applicable frameworks and best practices (e.g. legal framework, security best practices, ergonomics, accessibility...).

Security constraints on exchanged flows are not covered in this document. These are the responsibility of each implementer, who is obliged to comply with the applicable legal framework.

### Business context

{% include acc_contexte-metier.md %}

<br>

### Dependencies

{% lang-fragment dependency-table.xhtml %}

### Intellectual Property

{% lang-fragment ip-statements.xhtml %}

### Authors and Contributors

| Role  | Name | Organisation |
| --- | --- | --- |
| **Primary Editor** | Clotaire Delanchy | Groupement Régional e-Santé Bretagne |
| **Primary Editor** | Nicolas Riss | Agence du Numérique en Santé |

{% include svg-interactive-script.html %}