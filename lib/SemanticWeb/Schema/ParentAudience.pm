use utf8;

package SemanticWeb::Schema::ParentAudience;

# ABSTRACT: A set of characteristics describing parents

use Moo;

extends qw/ SemanticWeb::Schema::PeopleAudience /;


use MooX::JSON_LD 'ParentAudience';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A set of characteristics describing parents, who can be interested in
viewing some content.




=head1 ATTRIBUTES


=head2 C<child_max_age>

C<childMaxAge>

Maximal age of the child.


A child_max_age should be one of the following types:

=over

=item C<Num>

=back

=cut

has child_max_age => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'childMaxAge',
);


=head2 C<child_min_age>

C<childMinAge>

Minimal age of the child.


A child_min_age should be one of the following types:

=over

=item C<Num>

=back

=cut

has child_min_age => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'childMinAge',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PeopleAudience>

=cut

1;
