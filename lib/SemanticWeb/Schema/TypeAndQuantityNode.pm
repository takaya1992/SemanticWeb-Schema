use utf8;

package SemanticWeb::Schema::TypeAndQuantityNode;

# ABSTRACT: A structured value indicating the quantity

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'TypeAndQuantityNode';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A structured value indicating the quantity, unit of measurement, and
business function of goods included in a bundle offer.




=head1 ATTRIBUTES


=head2 C<amount_of_this_good>

C<amountOfThisGood>

The quantity of the goods included in the offer.


A amount_of_this_good should be one of the following types:

=over

=item C<Num>

=back

=cut

has amount_of_this_good => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'amountOfThisGood',
);


=head2 C<business_function>

C<businessFunction>

The business function (e.g. sell, lease, repair, dispose) of the offer or
component of a bundle (TypeAndQuantityNode). The default is
http://purl.org/goodrelations/v1#Sell.


A business_function should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::BusinessFunction']>

=back

=cut

has business_function => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'businessFunction',
);


=head2 C<type_of_good>

C<typeOfGood>

The product that this structured value is referring to.


A type_of_good should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Product']>

=item C<InstanceOf['SemanticWeb::Schema::Service']>

=back

=cut

has type_of_good => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'typeOfGood',
);


=head2 C<unit_code>

C<unitCode>

The unit of measurement given using the UN/CEFACT Common Code (3
characters) or a URL. Other codes than the UN/CEFACT Common Code may be
used with a prefix followed by a colon.


A unit_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has unit_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitCode',
);


=head2 C<unit_text>

C<unitText>

=begin html

<p>A string or text indicating the unit of measurement. Useful if you
cannot provide a standard unit code for <a href='unitCode'>unitCode</a>.<p>

=end html


A unit_text should be one of the following types:

=over

=item C<Str>

=back

=cut

has unit_text => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitText',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
