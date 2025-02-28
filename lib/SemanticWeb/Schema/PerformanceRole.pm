use utf8;

package SemanticWeb::Schema::PerformanceRole;

# ABSTRACT: A PerformanceRole is a Role that some entity places with regard to a theatrical performance

use Moo;

extends qw/ SemanticWeb::Schema::Role /;


use MooX::JSON_LD 'PerformanceRole';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A PerformanceRole is a Role that some entity places with regard to a
theatrical performance, e.g. in a Movie, TVSeries etc.




=head1 ATTRIBUTES


=head2 C<character_name>

C<characterName>

The name of a character played in some acting or performing role, i.e. in a
PerformanceRole.


A character_name should be one of the following types:

=over

=item C<Str>

=back

=cut

has character_name => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'characterName',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Role>

=cut

1;
