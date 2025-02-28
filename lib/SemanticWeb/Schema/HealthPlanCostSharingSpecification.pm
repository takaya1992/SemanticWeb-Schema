use utf8;

package SemanticWeb::Schema::HealthPlanCostSharingSpecification;

# ABSTRACT: A description of costs to the patient under a given network or formulary.

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'HealthPlanCostSharingSpecification';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A description of costs to the patient under a given network or formulary.




=head1 ATTRIBUTES


=head2 C<health_plan_coinsurance_option>

C<healthPlanCoinsuranceOption>

Whether the coinsurance applies before or after deductible, etc. TODO: Is
this a closed set?


A health_plan_coinsurance_option should be one of the following types:

=over

=item C<Str>

=back

=cut

has health_plan_coinsurance_option => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanCoinsuranceOption',
);


=head2 C<health_plan_coinsurance_rate>

C<healthPlanCoinsuranceRate>

Whether The rate of coinsurance expressed as a number between 0.0 and 1.0.


A health_plan_coinsurance_rate should be one of the following types:

=over

=item C<Num>

=back

=cut

has health_plan_coinsurance_rate => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanCoinsuranceRate',
);


=head2 C<health_plan_copay>

C<healthPlanCopay>

Whether The copay amount.


A health_plan_copay should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PriceSpecification']>

=back

=cut

has health_plan_copay => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanCopay',
);


=head2 C<health_plan_copay_option>

C<healthPlanCopayOption>

Whether the copay is before or after deductible, etc. TODO: Is this a
closed set?


A health_plan_copay_option should be one of the following types:

=over

=item C<Str>

=back

=cut

has health_plan_copay_option => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanCopayOption',
);


=head2 C<health_plan_pharmacy_category>

C<healthPlanPharmacyCategory>

The category or type of pharmacy associated with this cost sharing.


A health_plan_pharmacy_category should be one of the following types:

=over

=item C<Str>

=back

=cut

has health_plan_pharmacy_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'healthPlanPharmacyCategory',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
