use utf8;

package SemanticWeb::Schema::PaymentCard;

# ABSTRACT: A payment method using a credit

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct SemanticWeb::Schema::PaymentMethod /;


use MooX::JSON_LD 'PaymentCard';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A payment method using a credit, debit, store or other card to associate
the payment with an account.




=head1 ATTRIBUTES


=head2 C<cash_back>

C<cashBack>

A cardholder benefit that pays the cardholder a small percentage of their
net expenditures.


A cash_back should be one of the following types:

=over

=item C<Bool>

=item C<Num>

=back

=cut

has cash_back => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'cashBack',
);


=head2 C<contactless_payment>

C<contactlessPayment>

A secure method for consumers to purchase products or services via debit,
credit or smartcards by using RFID or NFC technology.


A contactless_payment should be one of the following types:

=over

=item C<Bool>

=back

=cut

has contactless_payment => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'contactlessPayment',
);


=head2 C<floor_limit>

C<floorLimit>

A floor limit is the amount of money above which credit card transactions
must be authorized.


A floor_limit should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has floor_limit => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'floorLimit',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::PaymentMethod>

=cut

1;
