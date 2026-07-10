Logical: CDSContact
Id: cds-contact
Title: "CDS Contact"
Parent: https://interop.esante.gouv.fr/ig/mos/StructureDefinition/Contact
Description: "Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager"

* . ^comment = "Flux 1, flux 2, flux 3, flux 4"
* ^status = #draft
* . ^short = "Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager"
* . ^definition =  "Un contact peut être un membre de la famille ou un proche de l’Usager. Il peut s’agir par exemple d’un aidant, de la personne de confiance de l’Usager"

* role 1..1
* role ^mustSupport = true
* role ^short = "Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager."
* role ^definition = """
Indique la responsabilité d’une Personne Tierce au sein du Cercle de Soins d’un Usager.

Utilisation des codes :
* GUARD = Responsable légal
* QUAL = Personne de confiance
* CAREGIVER = Aidant
"""
* role from https://mos.esante.gouv.fr/NOS/TRE_R206-TypeContact/FHIR/TRE-R206-TypeContact/?vs

* personne 1..1 
* personne only cds-personne-physique

* description ^mustSupport = true
* relation ^mustSupport = true

* CDSMembreCercleSoins 1..1 cds-membre-cercle-soins "Lien vers le concept Membre Cercle Soins"
