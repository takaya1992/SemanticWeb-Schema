package SemanticWeb::Schema::BikeStore;

# ABSTRACT: A bike store.

use Moo;

extends qw/ SemanticWeb::Schema::Store /;


use MooX::JSON_LD 'BikeStore';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A bike store.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Store>

=cut

1;
