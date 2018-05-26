package LDF::Schema::LiveBlogPosting;

# ABSTRACT: A blog post intended to provide a rolling textual coverage of an ongoing event through continuous updates.

use Moo;

extends qw/ LDF::Schema::BlogPosting /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A blog post intended to provide a rolling textual coverage of an ongoing
event through continuous updates.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<coverage_end_time>

C<coverageEndTime>

The time when the live blog will stop covering the Event. Note that
coverage may continue after the Event concludes.


A coverage_end_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has coverage_end_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<coverage_start_time>

C<coverageStartTime>

The time when the live blog will begin covering the Event. Note that
coverage may begin before the Event's start time. The LiveBlogPosting may
also be created before coverage begins.


A coverage_start_time should be one of the following types:

=over

=item C<Str>

=back

=cut

has coverage_start_time => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<live_blog_update>

C<liveBlogUpdate>

An update to the LiveBlog.


A live_blog_update should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::BlogPosting']>

=back

=cut

has live_blog_update => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'LiveBlogPosting' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { coverageEndTime => 'coverage_end_time' },
      { coverageStartTime => 'coverage_start_time' },
      { liveBlogUpdate => 'live_blog_update' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::BlogPosting>

=cut

1;
