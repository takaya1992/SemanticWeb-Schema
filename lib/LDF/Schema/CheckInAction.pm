package LDF::Schema::CheckInAction;

# ABSTRACT: <p>The act of an agent communicating (service provider

use Moo;

extends qw/ LDF::Schema::CommunicateAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of an agent communicating (service provider, social media, etc)
their arrival by registering/confirming for a previously reserved service
(e.g. flight check in) or at a place (e.g. hotel), possibly resulting in a
result (boarding pass, etc).</p> <p>Related actions:</p> <ul> <li><a
class="localLink"
href="http://schema.org/CheckOutAction">CheckOutAction</a>: The antonym of
CheckInAction.</li> <li><a class="localLink"
href="http://schema.org/ArriveAction">ArriveAction</a>: Unlike
ArriveAction, CheckInAction implies that the agent is informing/confirming
the start of a previously reserved service.</li> <li><a class="localLink"
href="http://schema.org/ConfirmAction">ConfirmAction</a>: Unlike
ConfirmAction, CheckInAction implies that the agent is informing/confirming
the <em>start</em> of a previously reserved service rather than its
validity/existence.</li> </ul> 

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

sub json_ld_type { 'CheckInAction' }

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



L<LDF::Schema::CommunicateAction>

=cut

1;
