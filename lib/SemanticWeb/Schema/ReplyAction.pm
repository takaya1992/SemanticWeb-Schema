package SemanticWeb::Schema::ReplyAction;

# ABSTRACT: <p>The act of responding to a question/message asked/sent by the object

use Moo;

extends qw/ SemanticWeb::Schema::CommunicateAction /;


use MooX::JSON_LD 'ReplyAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

=begin html

<p>The act of responding to a question/message asked/sent by the object.
Related to <a class="localLink"
href="http://schema.org/AskAction">AskAction</a></p> <p>Related
actions:</p> <ul> <li><a class="localLink"
href="http://schema.org/AskAction">AskAction</a>: Appears generally as an
origin of a ReplyAction.</li> </ul> 

=end html




=head1 ATTRIBUTES


=head2 C<result_comment>

C<resultComment>

A sub property of result. The Comment created or sent as a result of this
action.


A result_comment should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Comment']>

=back

=cut

has result_comment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'resultComment',
    json_ld_serializer => \&_serialize_result_comment,
);

sub _serialize_result_comment { $_[0]->_serializer('result_comment') }




=head1 SEE ALSO



L<SemanticWeb::Schema::CommunicateAction>

=cut

1;
