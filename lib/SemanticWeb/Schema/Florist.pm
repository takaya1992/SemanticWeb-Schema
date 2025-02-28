use utf8;

package SemanticWeb::Schema::Florist;

# ABSTRACT: A florist.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'Florist';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A florist.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
