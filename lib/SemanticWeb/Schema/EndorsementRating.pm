use utf8;

package SemanticWeb::Schema::EndorsementRating;

# ABSTRACT: An EndorsementRating is a rating that expresses some level of endorsement

use Moo;

extends qw/ SemanticWeb::Schema::Rating /;


use MooX::JSON_LD 'EndorsementRating';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An EndorsementRating is a rating that expresses some level of
endorsement, for example inclusion in a "critic's pick" blog, a "Like" or
"+1" on a social network. It can be considered the <a class="localLink"
href="http://schema.org/result">result</a> of an <a class="localLink"
href="http://schema.org/EndorseAction">EndorseAction</a> in which the <a
class="localLink" href="http://schema.org/object">object</a> of the action
is rated positively by some <a class="localLink"
href="http://schema.org/agent">agent</a>. As is common elsewhere in
schema.org, it is sometimes more useful to describe the results of such an
action without explicitly describing the <a class="localLink"
href="http://schema.org/Action">Action</a>.<br/><br/> An <a
class="localLink"
href="http://schema.org/EndorsementRating">EndorsementRating</a> may be
part of a numeric scale or organized system, but this is not required:
having an explicit type for indicating a positive, endorsement rating is
particularly useful in the absence of numeric scales as it helps consumers
understand that the rating is broadly positive.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Rating>

=cut

1;
