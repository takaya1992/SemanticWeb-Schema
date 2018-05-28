package SemanticWeb::Schema::SubscribeAction;

# ABSTRACT: <p>The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates pushed to

use Moo;

extends qw/ SemanticWeb::Schema::InteractAction /;


use MooX::JSON_LD 'SubscribeAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of forming a personal connection with someone/something (object)
unidirectionally/asymmetrically to get updates pushed to.</p> <p>Related
actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/FollowAction">FollowAction</a>: Unlike
FollowAction, SubscribeAction implies that the subscriber acts as a passive
agent being constantly/actively pushed for updates.</li> <li><a
class="localLink"
href="http://schema.org/RegisterAction">RegisterAction</a>: Unlike
RegisterAction, SubscribeAction implies that the agent is interested in
continuing receiving updates from the object.</li> <li><a class="localLink"
href="http://schema.org/JoinAction">JoinAction</a>: Unlike JoinAction,
SubscribeAction implies that the agent is interested in continuing
receiving updates from the object.</li> </ul> 

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InteractAction>

=cut

1;
