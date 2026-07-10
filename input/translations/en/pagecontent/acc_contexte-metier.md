The Care Team (Cercle de Soins) identifies all actors (individuals, healthcare professionals and organisations) involved in the care coordination and health journey of a patient. 

#### Use cases

This section presents two examples of how a care circle can be used. These specifications do not apply exclusively to these use cases and may involve different actors.

**<u>Context 1</u> :** *A 75-year-old person living alone at home has cognitive impairment and suffers from chronic obstructive pulmonary disease (COPD). The person is seen monthly by their primary care physician, who receives support from a Coordination Support System (CSS) in their region to coordinate and manage the patient’s care. As part of the coordination efforts implemented by the primary care physician and the CSS’s coordinating physician, a nurse visits the person’s home daily to administer treatments. Similarly, a physical therapist visits the person’s home daily to help maintain physical activity and strengthen respiratory capacity.*

<u>Use case 1 </u> : The individual is first registered with the CSS, which creates a care circle for them in its digital coordination support tool. All professionals involved in the individual’s care are listed in the care circle along with their contact information.

<u>Use case 2</u> : The person falls at home and contacts emergency services. An ambulance picks them up and transports them to the emergency department of a healthcare facility in their area. The emergency room physician reviews the person’s care history in the facility’s Electronic Health Record, which allows the healthcare facility to contact the person’s primary care physician and the DAC to arrange for their discharge..

<u>Cas d’usage 3</u> : When a private nurse moves away, the patient chooses a new nurse. The CSS updates the patient’s care team in its digital coordination support tool to reflect the new professionals providing care to the patient..

Illustration using an interaction sequence diagram:

<figure class="figure svg-wrap" style="width:100%;">
 <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
 <button class="btn btn-light btn-sm svg-zoom-in">🔍+</button>
 <button class="btn btn-light btn-sm svg-zoom-out">🔍−</button>
 <button class="btn btn-light btn-sm svg-zoom-reset">↻</button>
 <button class="btn btn-light btn-sm svg-fullscreen">⛶</button>
 </div>
 <p style="margin: 0; padding: 0;">
    {% include spe-sequence-1.svg %}
 </p>
<figcaption>sequence diagram illustrating context 1</figcaption>
</figure>

<figure class="figure svg-wrap" style="width:100%;">
 <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
 <button class="btn btn-light btn-sm svg-zoom-in">🔍+</button>
 <button class="btn btn-light btn-sm svg-zoom-out">🔍−</button>
 <button class="btn btn-light btn-sm svg-zoom-reset">↻</button>
 <button class="btn btn-light btn-sm svg-fullscreen">⛶</button>
 </div>
 <p style="margin: 0; padding: 0;">
    {% include spe-sequence-2.svg %}
 </p>
<figcaption>use case sequence diagram</figcaption>
</figure>

**<u>Context 2</u> :** *A 62-year-old person has diabetes and is regularly monitored by a diabetes specialist who practices in a private practice. Follow-up care with a dietitian has also been arranged.*

<u>Use case 1</u> :  The patient is first seen by the diabetes specialist, who creates the care team in the practice management system. All healthcare professionals involved in the patient’s care are listed in the care team along with their contact information.

#### Definitions and legal framework

##### Care Team

There is no legal definition of the Care Team as such. A person's "Care Team" may be defined as the group of individuals, professionals, and organizations involved in the person's care within the healthcare, medico-administrative, medico-social, and social sectors. A person's "Care Team" may therefore consist of members of their healthcare team, other professionals, organizations, caregivers, trusted person, or legal representatives.

<div class='figure' style="margin:auto; width:65%;">
    <img src="acc_image1.png" alt="Flux1" title="Flux1">
</div>

##### Healthcare team

The concept of a "healthcare team" was defined by Law No. 2016-41 of 26 January 2016 and by the regulations deriving from it:

* Decree No. 2016-994 of 20 July 2016 relating to the conditions for exchanging and sharing information between healthcare professionals and other professionals in the social and medico-social sectors, and access to personal health information;
* Decree No. 2016-996 of 20 July 2016 relating to the list of healthcare, social and medico-social cooperation, shared practice, or coordination structures within which members of a healthcare team may practice;
* Decree No. 2016-1349 of 10 October 2016 relating to prior consent for information sharing between professionals who do not belong to the same healthcare team;
* Order of 25 November 2016 establishing the specifications for defining the healthcare team referred to in paragraph 3 of Article L.1110-12 of the French Public Health Code.

According to Article L.1110-12 of the French Public Health Code, the healthcare team is a group of professionals who participate directly, for the benefit of the same patient, in diagnostic, therapeutic, disability compensation, pain relief, or loss-of-autonomy prevention activities, or in the actions necessary to coordinate several of these activities, and who:

1° Either practice within the same healthcare institution, within the armed forces health service, within the same social or medico-social institution or service referred to in paragraph I of Article L.312-1 of the French Social Action and Families Code, or within a healthcare, social or medico-social cooperation, shared practice, or coordination structure included in a list established by decree;

2° Or have been recognized as members of the healthcare team by the patient who consults them for consultations and procedures prescribed by a physician to whom the patient has entrusted their care;

3° Or practice within an organization including at least one healthcare professional and having a formalized organization and practices complying with specifications established by order of the Minister of Health.

##### Caregiver

Several legal definitions of the "caregiver" of a person receiving care can be found in various French legal codes (Social Action and Families Code, Social Security Code, Labour Code, etc.).

According to the definition provided in the French Public Health Code, Article L1111-6-1 specifies that the natural caregiver is a person chosen by the assisted person to support them in carrying out actions related to care prescribed by a physician in order to promote their autonomy.

##### Trusted person

The Law of 4 March 2002 on patients' rights introduced the concept of a patient's "trusted person" into French law.

The Law of 2 February 2016 creating new rights for patients and people at the end of life further clarified this concept, which is codified in Article L1111-6 of the French Public Health Code.

Article L1111-6 of the French Public Health Code states that any adult may designate a trusted person, who may be a relative, a close friend, or the attending physician, and who will be consulted if the person is unable to express their wishes or receive the information necessary for this purpose. The trusted person expresses the wishes of the individual. Their testimony takes precedence over any other testimony. This designation must be made in writing and co-signed by the designated person. It may be revised or revoked at any time.

If the patient so wishes, the trusted person accompanies them in their procedures and attends medical consultations in order to assist them in making decisions.

The designation of a trusted person is not mandatory. However, as part of the follow-up of their patient, the attending physician ensures that the patient is informed of the possibility of designating a trusted person. Furthermore, during any hospitalization, the patient is offered the opportunity to designate a trusted person. This designation remains valid for the duration of the hospitalization, unless otherwise specified by the patient.

The designation of a trusted person must be made in writing, either on plain paper or as part of advance directives.

##### Legal representative

A legal representative is a person legally designated to represent and protect the interests of another person. The legal representative acts in the name and on behalf of the person they represent.

For minors, legal representation is in the vast majority of cases exercised by the persons holding parental authority over the child (Article 382 of the French Civil Code).

When holders of parental authority are no longer able to exercise it, the law provides for the situation in which the minor is represented by a third party (the guardian), who is responsible for representing and protecting the child's interests (Articles 390 to 413 of the French Civil Code).

When an adult experiences impairment of mental faculties, or physical faculties insofar as such impairment prevents the expression of their wishes, making them unable to protect their own interests, the law provides for their protection while respecting individual freedoms through four protection regimes: judicial safeguard, curatorship, guardianship, and family authorization. In the case of guardianship, the adult is represented by a third party (the guardian), responsible for representing and protecting their interests (Article 440 et seq. of the French Civil Code).

##### DAC Information System and Physician Information System

DAC Information System: any application or digital service used by a DAC for care coordination purposes (care coordination digital service, etc.).

Physician Information System: any application or digital service used by a physician (practice management software, care coordination digital service, etc.).

##### Exchange and sharing of Care Team data

The exchange and sharing of data relating to a Care Team constitute the processing of personal data and therefore fall within the scope of application of the General Data Protection Regulation (GDPR).

#### Business context organization

The "Care Team" domain relates to the management of a person's Care Team.

<figure class="figure svg-wrap" style="width:100%;">
 <div class="btn-group-vertical position-absolute top-0 end-0 p-2 svg-controls">
 <button class="btn btn-light btn-sm svg-zoom-in">🔍+</button>
 <button class="btn btn-light btn-sm svg-zoom-out">🔍−</button>
 <button class="btn btn-light btn-sm svg-zoom-reset">↻</button>
 <button class="btn btn-light btn-sm svg-fullscreen">⛶</button>
 </div>
 <p style="margin: 0; padding: 0;">
    {% include spe-paquetage.svg %}
 </p>
<figcaption>Organization of the Business Context for the “Care Team Study</figcaption>
</figure>
  
The scope of the study includes the processes shown in blue in the package diagram.

Examples of processes already covered or out of scope are available [here](annexes-exemple-processus-metier-hp.html).

#### Actors involved in all processes

The generic actors defined in this IG are:

{% sql {
  "query" : "
    SELECT
      Title,
      Description,
      REPLACE(Purpose, '**Exemples**', '') AS Purpose,
      Web
    FROM Resources
    WHERE Type = 'ActorDefinition'
    ORDER BY Title
  ",
  "class" : "lines",
  "columns" : [
    {
      "title" : "Actor", "type" : "link", "source" : "Title", "target" : "Web" },
    {
      "title" : "Description", "type" : "markdown", "source" : "Description" },
    {
      "title" : "Examples", "type" : "markdown", "source" : "Purpose" }
  ]
} %}

#### Implementation scenarios

The architectural model for Care Team management may be centralized or distributed:

* Users' Care Teams may be stored and managed centrally by a single system identified as the Care Team manager at national or regional level, for example.
* Users' Care Teams may be stored and managed in a distributed manner. Several systems may therefore act as Care Team managers within a given territory. In this case, mechanisms for identifying the managers and the Care Teams they manage, and possibly for synchronizing them, must be put in place.

These interoperability specifications apply regardless of the architectural model adopted.
