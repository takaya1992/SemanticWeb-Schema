use utf8;

package SemanticWeb::Schema::DataType;

# ABSTRACT: The basic data types such as Integers

use Moo;

extends qw/ SemanticWeb::RDFS::Class /;


use MooX::JSON_LD 'DataType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.0';

=encoding utf8

=head1 DESCRIPTION

The basic data types such as Integers, Strings, etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::RDFS::Class>

=cut

1;
