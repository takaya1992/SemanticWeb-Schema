use utf8;

package SemanticWeb::Schema::Role;

# ABSTRACT: Represents additional information about a relationship or property

use Moo;

extends qw/ SemanticWeb::Schema::Intangible /;


use MooX::JSON_LD 'Role';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>Represents additional information about a relationship or property. For
example a Role can be used to say that a 'member' role linking some
SportsTeam to a player occurred during a particular time period. Or that a
Person's 'actor' role in a Movie was for some particular characterName.
Such properties can be attached to a Role entity, which is then associated
with the main entities using ordinary properties like 'member' or
'actor'.<br/><br/> See also <a
href="http://blog.schema.org/2014/06/introducing-role.html">blog
post</a>.<p>

=end html




=head1 ATTRIBUTES


=head2 C<end_date>

C<endDate>

=begin html

<p>The end date and time of the item (in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>).<p>

=end html


A end_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has end_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'endDate',
);


=head2 C<named_position>

C<namedPosition>

A position played, performed or filled by a person or organization, as part
of an organization. For example, an athlete in a SportsTeam might play in
the position named 'Quarterback'.


A named_position should be one of the following types:

=over

=item C<Str>

=back

=cut

has named_position => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'namedPosition',
);


=head2 C<role_name>

C<roleName>

A role played, performed or filled by a person or organization. For
example, the team of creators for a comic book might fill the roles named
'inker', 'penciller', and 'letterer'; or an athlete in a SportsTeam might
play in the position named 'Quarterback'.


A role_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has role_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'roleName',
);


=head2 C<start_date>

C<startDate>

=begin html

<p>The start date and time of the item (in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 date format</a>).<p>

=end html


A start_date should be one of the following types:

=over

=item C<Str>

=back

=cut

has start_date => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'startDate',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Intangible>

=cut

1;
