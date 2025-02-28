use utf8;

package SemanticWeb::Schema::LoanOrCredit;

# ABSTRACT: A financial product for the loaning of an amount of money under agreed terms and charges.

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'LoanOrCredit';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A financial product for the loaning of an amount of money under agreed
terms and charges.




=head1 ATTRIBUTES


=head2 C<amount>



The amount of money.


A amount should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=item C<Num>

=back

=cut

has amount => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'amount',
);


=head2 C<currency>



=begin html

<p>The currency in which the monetary amount is expressed.<br/><br/> Use
standard formats: <a href="http://en.wikipedia.org/wiki/ISO_4217">ISO 4217
currency format</a> e.g. "USD"; <a
href="https://en.wikipedia.org/wiki/List_of_cryptocurrencies">Ticker
symbol</a> for cryptocurrencies e.g. "BTC"; well known names for <a
href="https://en.wikipedia.org/wiki/Local_exchange_trading_system">Local
Exchange Tradings Systems</a> (LETS) and other currency types e.g. "Ithaca
HOUR".<p>

=end html


A currency should be one of the following types:

=over

=item C<Str>

=back

=cut

has currency => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'currency',
);


=head2 C<grace_period>

C<gracePeriod>

The period of time after any due date that the borrower has to fulfil its
obligations before a default (failure to pay) is deemed to have occurred.


A grace_period should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Duration']>

=back

=cut

has grace_period => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'gracePeriod',
);


=head2 C<loan_repayment_form>

C<loanRepaymentForm>

A form of paying back money previously borrowed from a lender. Repayment
usually takes the form of periodic payments that normally include part
principal plus interest in each payment.


A loan_repayment_form should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::RepaymentSpecification']>

=back

=cut

has loan_repayment_form => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loanRepaymentForm',
);


=head2 C<loan_term>

C<loanTerm>

The duration of the loan or credit agreement.


A loan_term should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::QuantitativeValue']>

=back

=cut

has loan_term => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loanTerm',
);


=head2 C<loan_type>

C<loanType>

The type of a loan or credit.


A loan_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has loan_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'loanType',
);


=head2 C<recourse_loan>

C<recourseLoan>

The only way you get the money back in the event of default is the
security. Recourse is where you still have the opportunity to go back to
the borrower for the rest of the money.


A recourse_loan should be one of the following types:

=over

=item C<Bool>

=back

=cut

has recourse_loan => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'recourseLoan',
);


=head2 C<renegotiable_loan>

C<renegotiableLoan>

Whether the terms for payment of interest can be renegotiated during the
life of the loan.


A renegotiable_loan should be one of the following types:

=over

=item C<Bool>

=back

=cut

has renegotiable_loan => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'renegotiableLoan',
);


=head2 C<required_collateral>

C<requiredCollateral>

Assets required to secure loan or credit repayments. It may take form of
third party pledge, goods, financial instruments (cash, securities, etc.)


A required_collateral should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::Thing']>

=item C<Str>

=back

=cut

has required_collateral => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'requiredCollateral',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
