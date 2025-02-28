use utf8;

package SemanticWeb::Schema::WorkBasedProgram;

# ABSTRACT: A program with both an educational and employment component

use Moo;

extends qw/ SemanticWeb::Schema::EducationalOccupationalProgram /;


use MooX::JSON_LD 'WorkBasedProgram';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A program with both an educational and employment component. Typically
based at a workplace and structured around work-based learning, with the
aim of instilling competencies related to an occupation. WorkBasedProgram
is used to distinguish programs such as apprenticeships from school,
college or other classroom based educational programs.




=head1 ATTRIBUTES


=head2 C<occupational_category>

C<occupationalCategory>

=begin html

<p>A category describing the job, preferably using a term from a taxonomy
such as <a href="http://www.onetcenter.org/taxonomy.html">BLS
O*NET-SOC</a>, <a
href="https://www.ilo.org/public/english/bureau/stat/isco/isco08/">ISCO-08<
/a> or similar, with the property repeated for each applicable value.
Ideally the taxonomy should be identified, and both the textual label and
formal code for the category should be provided.<br/><br/> Note: for
historical reasons, any textual label and formal code provided as a literal
may be assumed to be from O*NET-SOC.<p>

=end html


A occupational_category should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::CategoryCode']>

=item C<Str>

=back

=cut

has occupational_category => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'occupationalCategory',
);


=head2 C<training_salary>

C<trainingSalary>

The estimated salary earned while in the program.


A training_salary should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmountDistribution']>

=back

=cut

has training_salary => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'trainingSalary',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::EducationalOccupationalProgram>

=cut

1;
