### Conclusion

Le tableau ci-dessous présente la synthèse métier et technique de la présente étude des standards HL7 FHIR R4, openEHR et les profils IHE PAM et DCTM candidats à l’élaboration des spécifications techniques du volet « Cercle de Soins ».

<table>
<tr>
<td style="background-color:#2c5f8a; color:#ffffff;"><b>Standard</b></td>
<td style="background-color:#2c5f8a; color:#ffffff;"><b>Synthèse</b></td>
</tr>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>IHE PAM</b></td>
<td style="background-color:#e6eef8;">Les segments ROL et NK1 apportent des éléments utiles (rôle d'un intervenant, personne de confiance), mais leur mise en œuvre pour le cercle de soins demanderait des <b>développements complémentaires importants</b>. Les structures de santé et les unités de soins ne sont couvertes par aucun segment.</td>
</tr>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>IHE DCTM</b></td>
<td style="background-color:#e6eef8;">Le profil <b>répond pleinement</b> au besoin métier et permet la mise en œuvre de l'ensemble des flux identifiés dans l'étude métier. Il est actuellement au stade <i>trial implementation</i> et nécessite des contraintes complémentaires (cardinalité, optionalité, nomenclature) pour finaliser sa mise en œuvre.</td>
</tr>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>HL7 FHIR</b></td>
<td style="background-color:#e6eef8;">Les ressources identifiées couvrent nativement la majorité des besoins et l'ensemble des flux métier, avec un format JSON bien adapté à la mobilité.Cependant la ressource centrale <b>CareTeam (NM2)</b> reste instable et pourrait évoluer sans garantie de rétrocompatibilité.</td>
</tr>
<tr>
<td style="background-color:#e6eef8; color:#245a8c;"><b>openEHR</b></td>
<td style="background-color:#e6eef8;">Le modèle Demographic répond en partie aux notions identifiées dans l'étude métier, mais l'alignement du modèle avec la ressource CareTeam est <b>encore en cours d'étude</b>. Sa mise en œuvre pour ce cas d'usage est jugée prématurée et nécessiterait des développements supplémentaires.</td>
</tr>
</table>

<br>

#### Standard retenu


<div style="border: 2px solid #2e7d4f; border-radius: 8px; background-color: #eef7f1; margin: 24px 0">
  <div style="background-color: #2e7d4f; color: #ffffff; padding: 10px 20px; font-weight: bold; font-size: 1.1em;">
    IHE DCTM
  </div>
  <div style="padding: 16px 20px;">
    <p>Le profil <b>IHE DCTM</b>, bien que récent et non encore implémenté, est le seul à couvrir pleinement le besoin d'interopérabilité de la gestion du cercle de soins tout en respectant le premier niveau de la hiérarchie doctrinale (profil IHE stable).</p>
    <p>La ressource FHIR <b>CareTeam</b> dont il dépend n'a pas encore atteint une maturité satisfaisante, mais les sessions de test organisées par HL7 tout au long de l'année laissent présager une évolution rapide de cette ressource.</p>
    <p style="margin-bottom:0;">La mise en œuvre de ce volet pourra elle-même nourrir le retour d'expérience de la communauté internationale autour du profil DCTM.</p>
  </div>
</div>