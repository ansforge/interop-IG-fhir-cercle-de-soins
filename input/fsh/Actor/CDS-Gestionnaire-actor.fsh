// ===========================================================================
// Acteur Gestionnaire
// ===========================================================================


Instance: CDS-Gestionnaire-Actor
InstanceOf: ActorDefinition
Title: "CDS Gestionnaire"
Usage: #definition
Description: """
Le rôle de gestionnaire incarné par un système, gère et stocke le cercle de soins, donne accès aux informations en cas de consultation.
"""
* purpose = """
**Exemples**
- Dossier patient informatisé
- Service numérique de partage de données
"""
* name = "CDS_Gestionnaire"
* title = "CDS Gestionnaire"
* status = #active
* experimental = false
* type = #system
* capabilities = Canonical(CDSGestionnaire)

