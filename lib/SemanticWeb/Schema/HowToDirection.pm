use utf8;

package SemanticWeb::Schema::HowToDirection;

# ABSTRACT: A direction indicating a single action to do in the instructions for how to achieve a result.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork SemanticWeb::Schema::ListItem /;


use MooX::JSON_LD 'HowToDirection';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A direction indicating a single action to do in the instructions for how to
achieve a result.




=head1 ATTRIBUTES


=head2 C<after_media>

C<afterMedia>

A media object representing the circumstances after performing this
direction.


A after_media should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<Str>

=back

=cut

has after_media => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'afterMedia',
);


=head2 C<before_media>

C<beforeMedia>

A media object representing the circumstances before performing this
direction.


A before_media should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<Str>

=back

=cut

has before_media => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'beforeMedia',
);


=head2 C<during_media>

C<duringMedia>

A media object representing the circumstances while performing this
direction.


A during_media should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MediaObject']>

=item C<Str>

=back

=cut

has during_media => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duringMedia',
);


=head2 C<perform_time>

C<performTime>

=begin html

<p>The length of time it takes to perform instructions or a direction (not
including time to prepare the supplies), in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration
format</a>.<p>

=end html


A perform_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has perform_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'performTime',
);


=head2 C<prep_time>

C<prepTime>

=begin html

<p>The length of time it takes to prepare the items to be used in
instructions or a direction, in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration
format</a>.<p>

=end html


A prep_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has prep_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'prepTime',
);


=head2 C<supply>



A sub-property of instrument. A supply consumed when performing
instructions or a direction.


A supply should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HowToSupply']>

=item C<Str>

=back

=cut

has supply => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'supply',
);


=head2 C<tool>



A sub property of instrument. An object used (but not consumed) when
performing instructions or a direction.


A tool should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::HowToTool']>

=item C<Str>

=back

=cut

has tool => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'tool',
);


=head2 C<total_time>

C<totalTime>

=begin html

<p>The total time required to perform instructions or a direction
(including time to prepare the supplies), in <a
href="http://en.wikipedia.org/wiki/ISO_8601">ISO 8601 duration
format</a>.<p>

=end html


A total_time should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has total_time => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'totalTime',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::ListItem>

=cut

1;
