package LDF::Schema::Text;

# ABSTRACT: Data type: Text.

use Moo;


with qw/ MooX::Role::JSON_LD /;

use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

Data type: Text.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Text' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut


sub json_ld_fields {
    [
    ]
}



=head1 SEE ALSO


L<MooX::Role::JSON_LD>


=cut

1;
