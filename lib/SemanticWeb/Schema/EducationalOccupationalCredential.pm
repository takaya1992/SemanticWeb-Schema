use utf8;

package SemanticWeb::Schema::EducationalOccupationalCredential;

# ABSTRACT: An educational or occupational credential

use Moo;

extends qw/ SemanticWeb::Schema::CreativeWork /;


use MooX::JSON_LD 'EducationalOccupationalCredential';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

An educational or occupational credential. A diploma, academic degree,
certification, qualification, badge, etc., that may be awarded to a person
or other entity that meets the requirements defined by the credentialer.




=head1 ATTRIBUTES


=head2 C<competency_required>

C<competencyRequired>

Knowledge, skill, ability or personal attribute that must be demonstrated
by a person or other entity.


A competency_required should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=cut

has competency_required => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'competencyRequired',
);


=head2 C<credential_category>

C<credentialCategory>

The category or type of credential being described, for example "degreeâ,
âcertificateâ, âbadgeâ, or more specific term.


A credential_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=cut

has credential_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'credentialCategory',
);


=head2 C<educational_level>

C<educationalLevel>

The level in terms of progression through an educational or training
context. Examples of educational levels include 'beginner', 'intermediate'
or 'advanced', and formal sets of level indicators.


A educational_level should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::DefinedTerm']>

=item C<Str>

=back

=cut

has educational_level => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'educationalLevel',
);


=head2 C<recognized_by>

C<recognizedBy>

An organization that acknowledges the validity, value or utility of a
credential. Note: recognition may include a process of quality assurance or
accreditation.


A recognized_by should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Organization']>

=back

=cut

has recognized_by => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recognizedBy',
);


=head2 C<valid_for>

C<validFor>

The duration of validity of a permit or similar thing.


A valid_for should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has valid_for => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validFor',
);


=head2 C<valid_in>

C<validIn>

The geographic area where a permit or similar thing is valid.


A valid_in should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::AdministrativeArea']>

=back

=cut

has valid_in => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'validIn',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::CreativeWork>

=cut

1;
