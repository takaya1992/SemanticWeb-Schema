use utf8;

package SemanticWeb::Schema::DrugCost;

# ABSTRACT: The cost per unit of a medical drug

use Moo;

extends qw/ SemanticWeb::Schema::MedicalEnumeration /;


use MooX::JSON_LD 'DrugCost';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The cost per unit of a medical drug. Note that this type is not meant to
represent the price in an offer of a drug for sale; see the Offer type for
that. This type will typically be used to tag wholesale or average retail
cost of a drug, or maximum reimbursable cost. Costs of medical drugs vary
widely depending on how and where they are paid for, so while this type
captures some of the variables, costs should be used with caution by
consumers of this schema's markup.




=head1 ATTRIBUTES


=head2 C<applicable_location>

C<applicableLocation>

The location in which the status applies.


A applicable_location should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=cut

has applicable_location => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'applicableLocation',
);


=head2 C<cost_category>

C<costCategory>

The category of cost, such as wholesale, retail, reimbursement cap, etc.


A cost_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DrugCostCategory']>

=back

=cut

has cost_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'costCategory',
);


=head2 C<cost_currency>

C<costCurrency>

The currency (in 3-letter of the drug cost. See:
http://en.wikipedia.org/wiki/ISO_4217


A cost_currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has cost_currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'costCurrency',
);


=head2 C<cost_origin>

C<costOrigin>

Additional details to capture the origin of the cost data. For example,
'Medicare Part B'.


A cost_origin should be one of the following types:

=over

=item C<Str>

=back

=cut

has cost_origin => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'costOrigin',
);


=head2 C<cost_per_unit>

C<costPerUnit>

The cost per unit of the drug.


A cost_per_unit should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=item C<Num>

=item C<Str>

=back

=cut

has cost_per_unit => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'costPerUnit',
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




=head1 SEE ALSO



L<SemanticWeb::Schema::MedicalEnumeration>

=cut

1;
