use utf8;

package SemanticWeb::Schema::AnalysisNewsArticle;

# ABSTRACT: An AnalysisNewsArticle is a NewsArticle that

use Moo;

extends qw/ SemanticWeb::Schema::NewsArticle /;


use MooX::JSON_LD 'AnalysisNewsArticle';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An AnalysisNewsArticle is a <a class="localLink"
href="http://schema.org/NewsArticle">NewsArticle</a> that, while based on
factual reporting, incorporates the expertise of the author/producer,
offering interpretations and conclusions.<p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::NewsArticle>

=cut

1;
