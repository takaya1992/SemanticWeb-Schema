use utf8;

package SemanticWeb::Schema::CourseInstance;

# ABSTRACT: An instance of a Course which is distinct from other instances because it is offered at a different time or location or through different media or modes of study or to a specific section of students.

use Moo;

extends qw/ SemanticWeb::Schema::Event /;


use MooX::JSON_LD 'CourseInstance';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

=begin html

<p>An instance of a <a class="localLink"
href="http://schema.org/Course">Course</a> which is distinct from other
instances because it is offered at a different time or location or through
different media or modes of study or to a specific section of students.<p>

=end html




=head1 ATTRIBUTES


=head2 C<course_mode>

C<courseMode>

The medium or means of delivery of the course instance or the mode of
study, either as a text label (e.g. "online", "onsite" or "blended";
"synchronous" or "asynchronous"; "full-time" or "part-time") or as a URL
reference to a term from a controlled vocabulary (e.g.
https://ceds.ed.gov/element/001311#Asynchronous ).


A course_mode should be one of the following types:

=over

=item C<Str>

=back

=cut

has course_mode => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'courseMode',
);


=head2 C<course_workload>

C<courseWorkload>

The amount of work expected of students taking the course, often provided
as a figure per week or per month, and may be broken down by type. For
example, "2 hours of lectures, 1 hour of lab work and 3 hours of
independent study per week".


A course_workload should be one of the following types:

=over

=item C<Str>

=back

=cut

has course_workload => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'courseWorkload',
);


=head2 C<instructor>



=begin html

<p>A person assigned to instruct or provide instructional assistance for
the <a class="localLink"
href="http://schema.org/CourseInstance">CourseInstance</a>.<p>

=end html


A instructor should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Person']>

=back

=cut

has instructor => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'instructor',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::Event>

=cut

1;
