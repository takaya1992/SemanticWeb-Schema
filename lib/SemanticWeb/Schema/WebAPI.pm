use utf8;

package SemanticWeb::Schema::WebAPI;

# ABSTRACT: An application programming interface accessible over Web/Internet technologies.

use Moo;

extends qw/ SemanticWeb::Schema::Service /;


use MooX::JSON_LD 'WebAPI';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An application programming interface accessible over Web/Internet
technologies.




=head1 ATTRIBUTES


=head2 C<documentation>



Further documentation describing the Web API in more detail.


A documentation should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CreativeWork']>

=item C<Str>

=back

=cut

has documentation => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'documentation',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Service>

=cut

1;
