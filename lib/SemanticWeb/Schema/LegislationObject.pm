use utf8;

package SemanticWeb::Schema::LegislationObject;

# ABSTRACT: A specific object or file containing a Legislation

use Moo;

extends qw/ SemanticWeb::Schema::Legislation SemanticWeb::Schema::MediaObject /;


use MooX::JSON_LD 'LegislationObject';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A specific object or file containing a Legislation. Note that the same
Legislation can be published in multiple files. For example, a digitally
signed PDF, a plain PDF and an HTML version.




=head1 ATTRIBUTES


=head2 C<legislation_legal_value>

C<legislationLegalValue>

The legal value of this legislation file. The same legislation can be
written in multiple files with different legal values. Typically a
digitally signed PDF have a "stronger" legal value than the HTML file of
the same act.


A legislation_legal_value should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::LegalValueLevel']>

=back

=cut

has legislation_legal_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'legislationLegalValue',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::MediaObject>

=cut

1;
