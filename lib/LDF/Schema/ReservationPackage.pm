package LDF::Schema::ReservationPackage;

# ABSTRACT: A group of multiple reservations with common values for all sub-reservations.

use Moo;

extends qw/ LDF::Schema::Reservation /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A group of multiple reservations with common values for all
sub-reservations.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<sub_reservation>

C<subReservation>

The individual reservations included in the package. Typically a repeated
property.


A sub_reservation should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Reservation']>

=back

=cut

has sub_reservation => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'ReservationPackage' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { subReservation => 'sub_reservation' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Reservation>

=cut

1;
