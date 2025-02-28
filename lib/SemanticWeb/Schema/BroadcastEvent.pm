use utf8;

package SemanticWeb::Schema::BroadcastEvent;

# ABSTRACT: An over the air or online broadcast event.

use Moo;

extends qw/ SemanticWeb::Schema::PublicationEvent /;


use MooX::JSON_LD 'BroadcastEvent';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An over the air or online broadcast event.




=head1 ATTRIBUTES


=head2 C<broadcast_of_event>

C<broadcastOfEvent>

The event being broadcast such as a sporting event or awards ceremony.


A broadcast_of_event should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has broadcast_of_event => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'broadcastOfEvent',
);


=head2 C<is_live_broadcast>

C<isLiveBroadcast>

True is the broadcast is of a live event.


A is_live_broadcast should be one of the following types:

=over

=item C<Bool>

=back

=cut

has is_live_broadcast => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'isLiveBroadcast',
);


=head2 C<subtitle_language>

C<subtitleLanguage>

=begin html

<p>Languages in which subtitles/captions are available, in <a
href="http://tools.ietf.org/html/bcp47">IETF BCP 47 standard format</a>.<p>

=end html


A subtitle_language should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Language']>

=item C<Str>

=back

=cut

has subtitle_language => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'subtitleLanguage',
);


=head2 C<video_format>

C<videoFormat>

The type of screening or video broadcast used (e.g. IMAX, 3D, SD, HD,
etc.).


A video_format should be one of the following types:

=over

=item C<Str>

=back

=cut

has video_format => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'videoFormat',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PublicationEvent>

=cut

1;
