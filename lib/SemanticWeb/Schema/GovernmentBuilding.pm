use utf8;

package SemanticWeb::Schema::GovernmentBuilding;

# ABSTRACT: A government building.

use Moo;

extends qw/ SemanticWeb::Schema::CivicStructure /;


use MooX::JSON_LD 'GovernmentBuilding';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A government building.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::CivicStructure>

=cut

1;
