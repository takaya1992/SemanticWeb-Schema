use utf8;

package SemanticWeb::Schema::OrderStatus;

# ABSTRACT: Enumerated status values for Order.

use Moo;

extends qw/ SemanticWeb::Schema::Enumeration /;


use MooX::JSON_LD 'OrderStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

Enumerated status values for Order.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Enumeration>

=cut

1;
