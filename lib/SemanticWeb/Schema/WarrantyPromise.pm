use utf8;

package SemanticWeb::Schema::WarrantyPromise;

# ABSTRACT: A structured value representing the duration and scope of services that will be provided to a customer free of charge in case of a defect or malfunction of a product.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'WarrantyPromise';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A structured value representing the duration and scope of services that
will be provided to a customer free of charge in case of a defect or
malfunction of a product.




=head1 ATTRIBUTES


=head2 C<duration_of_warranty>

C<durationOfWarranty>

The duration of the warranty promise. Common unitCode values are ANN for
year, MON for months, or DAY for days.


A duration_of_warranty should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has duration_of_warranty => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'durationOfWarranty',
);


=head2 C<warranty_scope>

C<warrantyScope>

The scope of the warranty promise.


A warranty_scope should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::WarrantyScope']>

=back

=cut

has warranty_scope => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'warrantyScope',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
