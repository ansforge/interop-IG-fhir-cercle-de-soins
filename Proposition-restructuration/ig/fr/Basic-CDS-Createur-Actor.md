# Resource CDS-Createur-Actor



## Resource Content

```json
{
  "resourceType" : "Basic",
  "id" : "CDS-Createur-Actor",
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.url",
    "valueUri" : "https://interop.esante.gouv.fr/ig/fhir/cds/ActorDefinition/CDS-Createur-Actor"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.version",
    "valueString" : "2.0.1"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.name",
    "valueString" : "CDS_Createur"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.title",
    "valueString" : "CDS Créateur"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.status",
    "valueCode" : "active"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.experimental",
    "valueBoolean" : false
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.date",
    "valueDateTime" : "2026-07-10T13:11:38+00:00"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.publisher",
    "valueString" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.contact",
    "valueContactDetail" : {
      "name" : "Agence du Numérique en Santé (ANS) - 2-10 Rue d'Oradour-sur-Glane, 75015 Paris",
      "telecom" : [{
        "system" : "url",
        "value" : "https://esante.gouv.fr"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.description",
    "valueMarkdown" : "Le rôle de créateur incarné par un système peut créer ou mettre à jour le cercle de soins d'une personne."
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.jurisdiction",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "urn:iso:std:iso:3166",
        "code" : "FR",
        "display" : "France (la)"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.purpose",
    "valueMarkdown" : "**Exemples**\n- Service numérique d’appui à la coordination (SI DAC, SI Médecin traitant) \n- Dossier Patient Informatisé"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.type",
    "valueCode" : "system"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition.documentation",
    "valueMarkdown" : "Un créateur :\n- **DOIT** être habilité ;\n\nPour une création il : \n- **DOIT** vérifier l’absence du cercle de soins de la personne par le gestionnaire du cercle de soins via une demande de consultation ;\n- **DOIT** disposer des paramètres de création de cercle de soins (et en particulier de l’identifiant du patient);&#xa;&#xa;\n\nPour une mise à jour il : \n- **DOIT** disposer des paramètres de mise à jour de cercle de soins (et en particulier de l’identifiant du patient);\n- Dans le cas où il y a plusieurs contributeurs : **DOIT** avoir consulté préalablement la dernière version du cercle de soins de la personne dans le gestionnaire du cercle de soins afin de garantir l’intégrité des informations contenues dans le cercle de soins\n\nConsulter [CapabilityStatement CDSCreateurRestful](CapabilityStatement-CDSCreateurRestful.html) et [CapabilityStatement CDSCreateurTransaction](CapabilityStatement-CDSCreateurTransaction.html) pour les ressources CapabilityStatement associées à l'acteur."
  }],
  "code" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/fhir-types",
      "code" : "ActorDefinition"
    }]
  }
}

```
