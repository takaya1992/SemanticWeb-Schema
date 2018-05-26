package LDF::Schema::UnRegisterAction;

# ABSTRACT: <p>The act of un-registering from a service

use Moo;

extends qw/ LDF::Schema::InteractAction /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of un-registering from a service.</p> <p>Related actions:</p>
<ul> <li><a class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: antonym of
UnRegisterAction.</li> <li><a class="localLink"
href="http://schema.org/Leave">Leave</a>: Unlike LeaveAction,
UnRegisterAction implies that you are unregistering from a service you
werer previously registered, rather than leaving a team/group of
people.</li> </ul> 

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

sub json_ld_type { 'UnRegisterAction' }

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



L<LDF::Schema::InteractAction>

=cut

1;
