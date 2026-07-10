// ===========================================================================
// Acteur Consommateur
// ===========================================================================

Instance: CDS-Consommateur-Actor
InstanceOf: ActorDefinition
Title: "CDS Consommateur"
Usage: #definition
Description: """
Le rôle de consommateur incarné par un système, peut consulter un cercle de soins.
"""
* purpose = """
**Exemples**
- Dossier patient informatisé
- Système de gestion de laboratoire
- Système d’information radiologique
- Logiciel de gestion de cabinet
- Service numérique d’appui à la coordination
"""
* name = "CDS_Consommateur"
* title = "CDS Consommateur"
* status = #active
* experimental = false
* type = #system

* documentation = """
Le consommateur du cercle de soins doit au préalable :

- **DOIT** être habilité ;
- **DOIT** disposer des paramètres de la demande de consultation du cercle de soins (et en particulier de l’identifiant du patient).

"""
* capabilities = Canonical(CDSConsommateur)