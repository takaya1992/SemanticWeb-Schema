package SemanticWeb::Schema::HealthClub;

# ABSTRACT: A health club.

use Moo;

extends qw/ SemanticWeb::Schema::SportsActivityLocation SemanticWeb::Schema::HealthAndBeautyBusiness /;


use MooX::JSON_LD 'HealthClub';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A health club.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::HealthAndBeautyBusiness>

=cut

1;
