// ===========================================================================
// Acteurs de création 
// ===========================================================================


Instance: CDS-Createur-Actor
InstanceOf: ActorDefinition
Title: "CDS Créateur"
Usage: #definition

Description: """
Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne.
"""
* purpose = """
**Exemples**
- Service numérique d’appui à la coordination (SI DAC, SI Médecin traitant) 
- Dossier Patient Informatisé
"""
* documentation = """
Un créateur :
- **DOIT** être habilité ;

Pour une création il : 
- **DOIT** vérifier l’absence du cercle de soins de la personne par le gestionnaire du cercle de soins via une demande de consultation ;
- **DOIT** disposer des paramètres de création de cercle de soins (et en particulier de l’identifiant du patient);&#xa;&#xa;

Pour une mise à jour il : 
- **DOIT** disposer des paramètres de mise à jour de cercle de soins (et en particulier de l’identifiant du patient);
- Dans le cas où il y a plusieurs contributeurs : **DOIT** avoir consulté préalablement la dernière version du cercle de soins de la personne dans le gestionnaire du cercle de soins afin de garantir l’intégrité des informations contenues dans le cercle de soins

Consulter [CapabilityStatement CDSCreateurRestful](CapabilityStatement-CDSCreateurRestful.html) et [CapabilityStatement CDSCreateurTransaction](CapabilityStatement-CDSCreateurTransaction.html) pour les ressources CapabilityStatement associées à l'acteur.
"""

* name = "CDS_Createur"
* title = "CDS Créateur"
* status = #active
* experimental = false
* type = #system