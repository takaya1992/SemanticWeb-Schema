use utf8;

package SemanticWeb::Schema::RentAction;

# ABSTRACT: The act of giving money in return for temporary use

use Moo;

extends qw/ SemanticWeb::Schema::TradeAction /;


use MooX::JSON_LD 'RentAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of giving money in return for temporary use, but not ownership, of
an object such as a vehicle or property. For example, an agent rents a
property from a landlord in exchange for a periodic payment.




=head1 ATTRIBUTES


=head2 C<landlord>



A sub property of participant. The owner of the real estate property.


A landlord should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has landlord => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'landlord',
);


=head2 C<real_estate_agent>

C<realEstateAgent>

A sub property of participant. The real estate agent involved in the
action.


A real_estate_agent should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RealEstateAgent']>

=back

=cut

has real_estate_agent => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'realEstateAgent',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TradeAction>

=cut

1;
