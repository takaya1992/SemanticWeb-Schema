package LDF::Schema::EducationalAudience;

# ABSTRACT: An EducationalAudience.

use Moo;

extends qw/ LDF::Schema::Audience /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

An EducationalAudience.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<educational_role>

C<educationalRole>

An educationalRole of an EducationalAudience.


A educational_role should be one of the following types:

=over

=item C<Str>

=back

=cut

has educational_role => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'EducationalAudience' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { educationalRole => 'educational_role' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Audience>

=cut

1;
