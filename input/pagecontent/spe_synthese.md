{% include svg-interactive-styles.html %}
{% include figure-caption.html %}

### Synthèse des flux

**Vue synthétique des flux par processus :**

<table style="width:100%">
  <tr>
    <th>Processus métier</th>
    <th>Flux techniques</th>
  </tr>
  <tr>
    <td>
    <a href="spe_creation_cercle_soins.html#etude-fonctionnelle">Création du cercle de soins</a>
   </td>
    <td>
      <ul>
      <li>Flux 1a - Création Acteur RESTful</li>
      {%include st-flux1a_creation_cds.svg%}
      <li>Flux 1b - Création Cercle Soins RESTful</li>
      {%include st-flux1b_creation_cds.svg%}
      <li>Flux 1c - Création Cercle Soins Transaction</li>
      {%include st-flux1c_creation_cds.svg%}
      </ul>
    </td>
  </tr>
  <tr>
    <td>
    <a href="spe_consultation_cercle_soins.html#etude-fonctionnelle">Consultation du cercle de soins</a>
    </td>
    <td>
      <ul>
      <li>Flux 2a - Recherche de cercles de soins</li>
      <li>Flux 3a - Réponse à la recherche de cercles de soins</li>
      {%include st-flux2a_3a_consult_cds.svg%}
      <li>Flux 2b - Récupération d’un cercle de soins</li>
      <li>Flux 3b - Réponse à la récupération d’un cercle de soins</li>
      {%include st-flux2b_3b_consult_cds.svg%}
      </ul>
    </td>
  </tr>
  <tr>
    <td>
    <a href="spe_mise_jour_cercle_soins.html#etude-fonctionnelle">Mise à jour du cercle de soins</a>
    </td>
    <td>
    <ul>
      <li>Flux 4a - Mise à jour d'un acteur RESTful</li>
      {%include st-flux4a_maj_cds.svg%}
      <li>Flux 4b - Mise à jour Cercle Soins RESTful</li>
      {%include st-flux4b_maj_cds.svg%}
      </ul>
      </td>
  </tr>
</table>

**Articulation des flux**

<figure style="text-align:center; width:100%;">
{% include spe-synthese-flux.svg %}
<figcaption>Organisation des flux</figcaption>
</figure>

### Ressources profilées

Le diagramme ci-dessous présente les ressources FHIR profilées et les concepts métiers qu'elles représentent :

<figure style="text-align:center; width:100%;">
{% include spe-synthese-ressources.svg %}
<figcaption>Ressources FHIR profilées pour le volet cercle de soins</figcaption>
</figure>

{% include svg-interactive-script.html %}