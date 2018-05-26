package LDF::Schema::Resort;

# ABSTRACT: A resort is a place used for relaxation or recreation

use Moo;

extends qw/ LDF::Schema::LodgingBusiness /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

A resort is a place used for relaxation or recreation, attracting visitors
for holidays or vacations. Resorts are places, towns or sometimes
commercial establishment operated by a single company (Source: Wikipedia,
the free encyclopedia, see <a
href="http://en.wikipedia.org/wiki/Resort">http://en.wikipedia.org/wiki/Res
ort</a>). <br /><br /> See also the <a href="/docs/hotels.html">dedicated
document on the use of schema.org for marking up hotels and other forms of
accommodations</a>.

=end html



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Resort' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
    ]
};



=head1 SEE ALSO



L<LDF::Schema::LodgingBusiness>

=cut

1;
