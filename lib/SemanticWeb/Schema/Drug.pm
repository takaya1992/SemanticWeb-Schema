use utf8;

package SemanticWeb::Schema::Drug;

# ABSTRACT: A chemical or biologic substance

use Moo;

extends qw/ SemanticWeb::Schema::Substance /;


use MooX::JSON_LD 'Drug';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A chemical or biologic substance, used as a medical therapy, that has a
physiological effect on an organism. Here the term drug is used
interchangeably with the term medicine although clinical knowledge make a
clear difference between them.




=head1 ATTRIBUTES


=head2 C<active_ingredient>

C<activeIngredient>

An active ingredient, typically chemical compounds and/or biologic
substances.


A active_ingredient should be one of the following types:

=over

=item C<Str>

=back

=cut

has active_ingredient => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'activeIngredient',
);


=head2 C<administration_route>

C<administrationRoute>

A route by which this drug may be administered, e.g. 'oral'.


A administration_route should be one of the following types:

=over

=item C<Str>

=back

=cut

has administration_route => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'administrationRoute',
);


=head2 C<alcohol_warning>

C<alcoholWarning>

Any precaution, guidance, contraindication, etc. related to consumption of
alcohol while taking this drug.


A alcohol_warning should be one of the following types:

=over

=item C<Str>

=back

=cut

has alcohol_warning => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'alcoholWarning',
);


=head2 C<available_strength>

C<availableStrength>

An available dosage strength for the drug.


A available_strength should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugStrength']>

=back

=cut

has available_strength => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'availableStrength',
);


=head2 C<breastfeeding_warning>

C<breastfeedingWarning>

Any precaution, guidance, contraindication, etc. related to this drug's use
by breastfeeding mothers.


A breastfeeding_warning should be one of the following types:

=over

=item C<Str>

=back

=cut

has breastfeeding_warning => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'breastfeedingWarning',
);


=head2 C<clincal_pharmacology>

C<clincalPharmacology>

Description of the absorption and elimination of drugs, including their
concentration (pharmacokinetics, pK) and biological effects
(pharmacodynamics, pD).


A clincal_pharmacology should be one of the following types:

=over

=item C<Str>

=back

=cut

has clincal_pharmacology => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'clincalPharmacology',
);


=head2 C<clinical_pharmacology>

C<clinicalPharmacology>

Description of the absorption and elimination of drugs, including their
concentration (pharmacokinetics, pK) and biological effects
(pharmacodynamics, pD).


A clinical_pharmacology should be one of the following types:

=over

=item C<Str>

=back

=cut

has clinical_pharmacology => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'clinicalPharmacology',
);


=head2 C<cost>



Cost per unit of the drug, as reported by the source being tagged.


A cost should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugCost']>

=back

=cut

has cost => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cost',
);


=head2 C<dosage_form>

C<dosageForm>

A dosage form in which this drug/supplement is available, e.g. 'tablet',
'suspension', 'injection'.


A dosage_form should be one of the following types:

=over

=item C<Str>

=back

=cut

has dosage_form => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'dosageForm',
);


=head2 C<dose_schedule>

C<doseSchedule>

A dosing schedule for the drug for a given population, either observed,
recommended, or maximum dose based on the type used.


A dose_schedule should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DoseSchedule']>

=back

=cut

has dose_schedule => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'doseSchedule',
);


=head2 C<drug_class>

C<drugClass>

The class of drug this belongs to (e.g., statins).


A drug_class should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugClass']>

=back

=cut

has drug_class => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'drugClass',
);


=head2 C<drug_unit>

C<drugUnit>

The unit in which the drug is measured, e.g. '5 mg tablet'.


A drug_unit should be one of the following types:

=over

=item C<Str>

=back

=cut

has drug_unit => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'drugUnit',
);


=head2 C<food_warning>

C<foodWarning>

Any precaution, guidance, contraindication, etc. related to consumption of
specific foods while taking this drug.


A food_warning should be one of the following types:

=over

=item C<Str>

=back

=cut

has food_warning => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'foodWarning',
);


=head2 C<included_in_health_insurance_plan>

C<includedInHealthInsurancePlan>

The insurance plans that cover this drug.


A included_in_health_insurance_plan should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HealthInsurancePlan']>

=back

=cut

has included_in_health_insurance_plan => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'includedInHealthInsurancePlan',
);


=head2 C<interacting_drug>

C<interactingDrug>

Another drug that is known to interact with this drug in a way that impacts
the effect of this drug or causes a risk to the patient. Note: disease
interactions are typically captured as contraindications.


A interacting_drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=cut

has interacting_drug => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'interactingDrug',
);


=head2 C<is_available_generically>

C<isAvailableGenerically>

True if the drug is available in a generic form (regardless of name).


A is_available_generically should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_available_generically => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isAvailableGenerically',
);


=head2 C<is_proprietary>

C<isProprietary>

True if this item's name is a proprietary/brand name (vs. generic name).


A is_proprietary should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_proprietary => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isProprietary',
);


=head2 C<label_details>

C<labelDetails>

Link to the drug's label details.


A label_details should be one of the following types:

=over

=item C<Str>

=back

=cut

has label_details => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'labelDetails',
);


=head2 C<legal_status>

C<legalStatus>

The drug or supplement's legal status, including any controlled substance
schedules that apply.


A legal_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugLegalStatus']>

=item C<InstanceOf['SemanticWeb::Schema::MedicalEnumeration']>

=item C<Str>

=back

=cut

has legal_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'legalStatus',
);


=head2 C<manufacturer>



The manufacturer of the product.


A manufacturer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has manufacturer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'manufacturer',
);


=head2 C<maximum_intake>

C<maximumIntake>

Recommended intake of this supplement for a given population as defined by
a specific recommending authority.


A maximum_intake should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MaximumDoseSchedule']>

=back

=cut

has maximum_intake => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'maximumIntake',
);


=head2 C<mechanism_of_action>

C<mechanismOfAction>

The specific biochemical interaction through which this drug or supplement
produces its pharmacological effect.


A mechanism_of_action should be one of the following types:

=over

=item C<Str>

=back

=cut

has mechanism_of_action => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'mechanismOfAction',
);


=head2 C<non_proprietary_name>

C<nonProprietaryName>

The generic name of this drug or supplement.


A non_proprietary_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has non_proprietary_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'nonProprietaryName',
);


=head2 C<overdosage>



Any information related to overdose on a drug, including signs or symptoms,
treatments, contact information for emergency response.


A overdosage should be one of the following types:

=over

=item C<Str>

=back

=cut

has overdosage => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'overdosage',
);


=head2 C<pregnancy_category>

C<pregnancyCategory>

Pregnancy category of this drug.


A pregnancy_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugPregnancyCategory']>

=back

=cut

has pregnancy_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pregnancyCategory',
);


=head2 C<pregnancy_warning>

C<pregnancyWarning>

Any precaution, guidance, contraindication, etc. related to this drug's use
during pregnancy.


A pregnancy_warning should be one of the following types:

=over

=item C<Str>

=back

=cut

has pregnancy_warning => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'pregnancyWarning',
);


=head2 C<prescribing_info>

C<prescribingInfo>

Link to prescribing information for the drug.


A prescribing_info should be one of the following types:

=over

=item C<Str>

=back

=cut

has prescribing_info => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'prescribingInfo',
);


=head2 C<prescription_status>

C<prescriptionStatus>

Indicates the status of drug prescription eg. local catalogs
classifications or whether the drug is available by prescription or
over-the-counter, etc.


A prescription_status should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugPrescriptionStatus']>

=item C<Str>

=back

=cut

has prescription_status => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'prescriptionStatus',
);


=head2 C<proprietary_name>

C<proprietaryName>

Proprietary name given to the diet plan, typically by its originator or
creator.


A proprietary_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has proprietary_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'proprietaryName',
);


=head2 C<related_drug>

C<relatedDrug>

Any other drug related to this one, for example commonly-prescribed
alternatives.


A related_drug should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Drug']>

=back

=cut

has related_drug => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'relatedDrug',
);


=head2 C<rxcui>



The RxCUI drug identifier from RXNORM.


A rxcui should be one of the following types:

=over

=item C<Str>

=back

=cut

has rxcui => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'rxcui',
);


=head2 C<warning>



Any FDA or other warnings about the drug (text or URL).


A warning should be one of the following types:

=over

=item C<Str>

=back

=cut

has warning => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'warning',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Substance>

=cut

1;
