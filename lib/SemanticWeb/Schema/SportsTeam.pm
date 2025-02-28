use utf8;

package SemanticWeb::Schema::SportsTeam;

# ABSTRACT: Organization: Sports team.

use Moo;

extends qw/ SemanticWeb::Schema::SportsOrganization /;


use MooX::JSON_LD 'SportsTeam';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

Organization: Sports team.




=head1 ATTRIBUTES


=head2 C<athlete>



A person that acts as performing member of a sports team; a player as
opposed to a coach.


A athlete should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has athlete => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'athlete',
);


=head2 C<coach>



A person that acts in a coaching role for a sports team.


A coach should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has coach => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'coach',
);


=head2 C<gender>



=begin html

<p>Gender of something, typically a <a class="localLink"
href="http://schema.org/Person">Person</a>, but possibly also fictional
characters, animals, etc. While http://schema.org/Male and
http://schema.org/Female may be used, text strings are also acceptable for
people who do not identify as a binary gender. The <a class="localLink"
href="http://schema.org/gender">gender</a> property can also be used in an
extended sense to cover e.g. the gender of sports teams. As with the gender
of individuals, we do not try to enumerate all possibilities. A
mixed-gender <a class="localLink"
href="http://schema.org/SportsTeam">SportsTeam</a> can be indicated with a
text value of "Mixed".<p>

=end html


A gender should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::GenderType']>

=item C<Str>

=back

=cut

has gender => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gender',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::SportsOrganization>

=cut

1;
