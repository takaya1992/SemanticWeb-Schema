use utf8;

package SemanticWeb::Schema::LoseAction;

# ABSTRACT: The act of being defeated in a competitive activity.

use Moo;

extends qw/ SemanticWeb::Schema::AchieveAction /;


use MooX::JSON_LD 'LoseAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of being defeated in a competitive activity.




=head1 ATTRIBUTES


=head2 C<winner>



A sub property of participant. The winner of the action.


A winner should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has winner => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'winner',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::AchieveAction>

=cut

1;
