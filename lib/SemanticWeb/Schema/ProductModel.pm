use utf8;

package SemanticWeb::Schema::ProductModel;

# ABSTRACT: A datasheet or vendor specification of a product (in the sense of a prototypical description).

use Moo;

extends qw/ SemanticWeb::Schema::Product /;


use MooX::JSON_LD 'ProductModel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A datasheet or vendor specification of a product (in the sense of a
prototypical description).




=head1 ATTRIBUTES


=head2 C<is_variant_of>

C<isVariantOf>

A pointer to a base product from which this product is a variant. It is
safe to infer that the variant inherits all product features from the base
model, unless defined locally. This is not transitive.


A is_variant_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=cut

has is_variant_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isVariantOf',
);


=head2 C<predecessor_of>

C<predecessorOf>

A pointer from a previous, often discontinued variant of the product to its
newer variant.


A predecessor_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=cut

has predecessor_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'predecessorOf',
);


=head2 C<successor_of>

C<successorOf>

A pointer from a newer variant of a product to its previous, often
discontinued predecessor.


A successor_of should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::ProductModel']>

=back

=cut

has successor_of => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'successorOf',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Product>

=cut

1;
