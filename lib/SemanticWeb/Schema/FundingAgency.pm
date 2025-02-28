use utf8;

package SemanticWeb::Schema::FundingAgency;

# ABSTRACT: A FundingAgency is an organization that implements one or more FundingScheme s and manages the granting process (via Grant s

use Moo;

extends qw/ SemanticWeb::Schema::Project /;


use MooX::JSON_LD 'FundingAgency';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>A FundingAgency is an organization that implements one or more <a
class="localLink" href="http://schema.org/FundingScheme">FundingScheme</a>s
and manages the granting process (via <a class="localLink"
href="http://schema.org/Grant">Grant</a>s, typically <a class="localLink"
href="http://schema.org/MonetaryGrant">MonetaryGrant</a>s). A funding
agency is not always required for grant funding, e.g. philanthropic giving,
corporate sponsorship etc.<br/><br/> <pre><code>Examples of funding
agencies include ERC, REA, NIH, Bill and Melinda Gates Foundation...
</code></pre> <p>

=end html




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Project>

=cut

1;
