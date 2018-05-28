package SemanticWeb::Schema::QuantitativeValue;

# ABSTRACT: A point value or interval for product characteristics and other purposes.

use Moo;

extends qw/ SemanticWeb::Schema::StructuredValue /;


use MooX::JSON_LD 'QuantitativeValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A point value or interval for product characteristics and other purposes.




=head1 ATTRIBUTES


=head2 C<additional_property>

C<additionalProperty>

=begin html

A property-value pair representing an additional characteristics of the
entitity, e.g. a product feature or another characteristic for which there
is no matching property in schema.org.</p> <p>Note: Publishers should be
aware that applications designed to use specific schema.org properties
(e.g. http://schema.org/width, http://schema.org/color,
http://schema.org/gtin13, ...) will typically expect such data to be
provided using those properties, rather than using the generic
property/value mechanism.

=end html


A additional_property should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=back

=cut

has additional_property => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'additionalProperty',
    json_ld_serializer => \&_serialize_additional_property,
);

sub _serialize_additional_property { $_[0]->_serializer('additional_property') }


=head2 C<max_value>

C<maxValue>

The upper value of some characteristic or property.


A max_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has max_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'maxValue',
    json_ld_serializer => \&_serialize_max_value,
);

sub _serialize_max_value { $_[0]->_serializer('max_value') }


=head2 C<min_value>

C<minValue>

The lower value of some characteristic or property.


A min_value should be one of the following types:

=over

=item C<Num>

=back

=cut

has min_value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'minValue',
    json_ld_serializer => \&_serialize_min_value,
);

sub _serialize_min_value { $_[0]->_serializer('min_value') }


=head2 C<unit_code>

C<unitCode>

The unit of measurement given using the UN/CEFACT Common Code (3
characters) or a URL. Other codes than the UN/CEFACT Common Code may be
used with a prefix followed by a colon.


A unit_code should be one of the following types:

=over

=item C<Str>

=back

=cut

has unit_code => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitCode',
    json_ld_serializer => \&_serialize_unit_code,
);

sub _serialize_unit_code { $_[0]->_serializer('unit_code') }


=head2 C<unit_text>

C<unitText>

=begin html

A string or text indicating the unit of measurement. Useful if you cannot
provide a standard unit code for <a href='unitCode'>unitCode</a>.

=end html


A unit_text should be one of the following types:

=over

=item C<Str>

=back

=cut

has unit_text => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'unitText',
    json_ld_serializer => \&_serialize_unit_text,
);

sub _serialize_unit_text { $_[0]->_serializer('unit_text') }


=head2 C<value>



=begin html

<p>The value of the quantitative value or property value node.</p> <ul>
<li>For <a class="localLink"
href="http://schema.org/QuantitativeValue">QuantitativeValue</a> and <a
class="localLink"
href="http://schema.org/MonetaryAmount">MonetaryAmount</a>, the recommended
type for values is 'Number'.</li> <li>For <a class="localLink"
href="http://schema.org/PropertyValue">PropertyValue</a>, it can be
'Text;', 'Number', 'Boolean', or 'StructuredValue'.</li> </ul> 

=end html


A value should be one of the following types:

=over

=item C<Bool>

=item C<Num>

=item C<Str>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=back

=cut

has value => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'value',
    json_ld_serializer => \&_serialize_value,
);

sub _serialize_value { $_[0]->_serializer('value') }


=head2 C<value_reference>

C<valueReference>

A pointer to a secondary value that provides additional information on the
original value, e.g. a reference temperature.


A value_reference should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=item C<InstanceOf['SemanticWeb::Schema::Enumeration']>

=item C<InstanceOf['SemanticWeb::Schema::PropertyValue']>

=item C<InstanceOf['SemanticWeb::Schema::StructuredValue']>

=item C<InstanceOf['SemanticWeb::Schema::QualitativeValue']>

=back

=cut

has value_reference => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'valueReference',
    json_ld_serializer => \&_serialize_value_reference,
);

sub _serialize_value_reference { $_[0]->_serializer('value_reference') }




=head1 SEE ALSO



L<SemanticWeb::Schema::StructuredValue>

=cut

1;
