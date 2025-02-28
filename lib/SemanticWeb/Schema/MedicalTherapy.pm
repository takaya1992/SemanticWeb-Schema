use utf8;

package SemanticWeb::Schema::MedicalTherapy;

# ABSTRACT: Any medical intervention designed to prevent

use Moo;

extends qw/ SemanticWeb::Schema::TherapeuticProcedure /;


use MooX::JSON_LD 'MedicalTherapy';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

Any medical intervention designed to prevent, treat, and cure human
diseases and medical conditions, including both curative and palliative
therapies. Medical therapies are typically processes of care relying upon
pharmacotherapy, behavioral therapy, supportive therapy (with fluid or
nutrition for example), or detoxification (e.g. hemodialysis) aimed at
improving or preventing a health condition.




=head1 ATTRIBUTES


=head2 C<contraindication>



A contraindication for this therapy.


A contraindication should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalContraindication']>

=item C<Str>

=back

=cut

has contraindication => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contraindication',
);


=head2 C<duplicate_therapy>

C<duplicateTherapy>

A therapy that duplicates or overlaps this one.


A duplicate_therapy should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalTherapy']>

=back

=cut

has duplicate_therapy => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'duplicateTherapy',
);


=head2 C<serious_adverse_outcome>

C<seriousAdverseOutcome>

A possible serious complication and/or serious side effect of this therapy.
Serious adverse outcomes include those that are life-threatening; result in
death, disability, or permanent damage; require hospitalization or prolong
existing hospitalization; cause congenital anomalies or birth defects; or
jeopardize the patient and may require medical or surgical intervention to
prevent one of the outcomes in this definition.


A serious_adverse_outcome should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MedicalEntity']>

=back

=cut

has serious_adverse_outcome => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'seriousAdverseOutcome',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::TherapeuticProcedure>

=cut

1;
