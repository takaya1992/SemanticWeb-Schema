use utf8;

package SemanticWeb::Schema::PlanAction;

# ABSTRACT: The act of planning the execution of an event/task/action/reservation/plan to a future date.

use Moo;

extends qw/ SemanticWeb::Schema::OrganizeAction /;


use MooX::JSON_LD 'PlanAction';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

The act of planning the execution of an event/task/action/reservation/plan
to a future date.




=head1 ATTRIBUTES


=head2 C<scheduled_time>

C<scheduledTime>

The time the object is scheduled to.


A scheduled_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has scheduled_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'scheduledTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::OrganizeAction>

=cut

1;
