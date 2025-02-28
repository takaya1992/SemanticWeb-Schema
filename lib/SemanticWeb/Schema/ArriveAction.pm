use utf8;

package SemanticWeb::Schema::ArriveAction;

# ABSTRACT: The act of arriving at a place

use Moo;

extends qw/ SemanticWeb::Schema::MoveAction /;


use MooX::JSON_LD 'ArriveAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of arriving at a place. An agent arrives at a destination from a
fromLocation, optionally with participants.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::MoveAction>

=cut

1;
