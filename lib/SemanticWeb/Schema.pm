use utf8;

package SemanticWeb::Schema;

# ABSTRACT: Moo classes for http://schema.org/ classes

use v5.10.1;

use Moo;

use List::Util qw/ first /;
use MooX::JSON_LD 'base';
use Ref::Util qw/ is_blessed_ref is_plain_arrayref /;
use Types::Standard qw/ Str /;

use namespace::autoclean;

our $VERSION = 'v5.0.1';

# RECOMMEND PREREQ: aliased
# RECOMMEND PREREQ: Class::XSAccessor 1.18
# RECOMMEND PREREQ: Ref::Util::XS
# RECOMMEND PREREQ: Type::Tiny::XS

=encoding utf8

=head1 SYNOPSIS

  use aliased 'SemanticWeb::Schema::Person' => 'Person';

  my $person = Person->new(
    name        => 'James Clerk Maxwell',
    birth_date  => '1831-06-13',
    birth_place => 'Edinburgh',
  );

  print $person->json_ld;

=head1 DESCRIPTION

This is a base class for the C<SemanticWeb::Schema> classes, which
were generated automatically from the following sources:

=over


=item L<https://schema.org/version/5.0/ext-auto.rdf>

=item L<https://schema.org/version/5.0/ext-bib.rdf>

=item L<https://schema.org/version/5.0/ext-health-lifesci.rdf>

=item L<https://schema.org/version/5.0/ext-meta.rdf>

=item L<https://schema.org/version/5.0/ext-pending.rdf>

=item L<https://schema.org/version/5.0/schema.rdf>

=back

=head1 ATTRIBUTES

=head2 C<id>

If this is set, it adds a C<@id> to the L</json_ld_data>.

=cut

has id => (
    is        => 'rw',
    isa       => Str,
    predicate => 1,
    json_ld   => '@id',
);

=head2 C<context>

The context defaults to "http://schema.org/".

=cut

around _build_context => sub { return 'http://schema.org/' };

=head1 SEE ALSO

=over

=item L<Moo>

=item L<MooX::JSON_LD>

=item L<http://schema.org/>

=back

=cut

1;
