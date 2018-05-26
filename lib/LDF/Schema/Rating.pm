package LDF::Schema::Rating;

# ABSTRACT: A rating is an evaluation on a numeric scale

use Moo;

extends qw/ LDF::Schema::Intangible /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A rating is an evaluation on a numeric scale, such as 1 to 5 stars.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=head1 ATTRIBUTES


=head2 C<author>



The author of this content or rating. Please note that author is special in
that HTML 5 provides a special mechanism for indicating authorship via the
rel tag. That is equivalent to this and may be used interchangeably.


A author should be one of the following types:

=over

=item C<InstanceOf['LDF::Schema::Organization']>

=item C<InstanceOf['LDF::Schema::Person']>

=back

=cut

has author => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<best_rating>

C<bestRating>

The highest value allowed in this rating system. If bestRating is omitted,
5 is assumed.


A best_rating should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has best_rating => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<rating_value>

C<ratingValue>

The rating for the content.


A rating_value should be one of the following types:

=over

=item C<Str>

=item C<Num>

=back

=cut

has rating_value => (
    is        => 'rw',
    predicate => 1,
);


=head2 C<worst_rating>

C<worstRating>

The lowest value allowed in this rating system. If worstRating is omitted,
1 is assumed.


A worst_rating should be one of the following types:

=over

=item C<Num>

=item C<Str>

=back

=cut

has worst_rating => (
    is        => 'rw',
    predicate => 1,
);




=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'Rating' }

=ead2 C<json_ld_fields>

Specifies the fields for L<MooX::Role::JSON_LD>

=cut



around json_ld_fields => sub {
    my ($next, $self) = @_;
    my $fields = $self->$next;
    [ @$fields,
      { author => 'author' },
      { bestRating => 'best_rating' },
      { ratingValue => 'rating_value' },
      { worstRating => 'worst_rating' },
    ]
};



=head1 SEE ALSO



L<LDF::Schema::Intangible>

=cut

1;
