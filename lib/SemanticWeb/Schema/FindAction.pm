package SemanticWeb::Schema::FindAction;

# ABSTRACT: <p>The act of finding an object

use Moo;

extends qw/ SemanticWeb::Schema::Action /;


use MooX::JSON_LD 'FindAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of finding an object.</p> <p>Related actions:</p> <ul> <li><a
class="localLink" href="http://schema.org/SearchAction">SearchAction</a>:
FindAction is generally lead by a SearchAction, but not necessarily.</li>
</ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Action>

=cut

1;
