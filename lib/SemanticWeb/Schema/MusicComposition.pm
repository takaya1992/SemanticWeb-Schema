use utf8;

package SemanticWeb::Schema::MusicComposition;

# ABSTRACT: A musical composition.

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'MusicComposition';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A musical composition.




=head1 ATTRIBUTES


=head2 C<composer>



The person or organization who wrote a composition, or who is the composer
of a work performed at some event.


A composer should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has composer => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'composer',
);


=head2 C<first_performance>

C<firstPerformance>

The date and place the work was first performed.


A first_performance should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Event']>

=back

=cut

has first_performance => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'firstPerformance',
);


=head2 C<included_composition>

C<includedComposition>

Smaller compositions included in this work (e.g. a movement in a symphony).


A included_composition should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=cut

has included_composition => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'includedComposition',
);


=head2 C<iswc_code>

C<iswcCode>

The International Standard Musical Work Code for the composition.


A iswc_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has iswc_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'iswcCode',
);


=head2 C<lyricist>



The person who wrote the words.


A lyricist should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has lyricist => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lyricist',
);


=head2 C<lyrics>



The words in the song.


A lyrics should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=back

=cut

has lyrics => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'lyrics',
);


=head2 C<music_arrangement>

C<musicArrangement>

An arrangement derived from the composition.


A music_arrangement should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicComposition']>

=back

=cut

has music_arrangement => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicArrangement',
);


=head2 C<music_composition_form>

C<musicCompositionForm>

The type of composition (e.g. overture, sonata, symphony, etc.).


A music_composition_form should be one of the following types:

=over

=item C<Str>

=back

=cut

has music_composition_form => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicCompositionForm',
);


=head2 C<musical_key>

C<musicalKey>

The key, mode, or scale this composition uses.


A musical_key should be one of the following types:

=over

=item C<Str>

=back

=cut

has musical_key => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'musicalKey',
);


=head2 C<recorded_as>

C<recordedAs>

An audio recording of the work.


A recorded_as should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MusicRecording']>

=back

=cut

has recorded_as => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recordedAs',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
