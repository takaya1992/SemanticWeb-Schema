use utf8;

package SemanticWeb::Schema::BankAccount;

# ABSTRACT: A product or service offered by a bank whereby one may deposit

use Moo;

extends qw/ SemanticWeb::Schema::FinancialProduct /;


use MooX::JSON_LD 'BankAccount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A product or service offered by a bank whereby one may deposit, withdraw or
transfer money and in some cases be paid interest.




=head1 ATTRIBUTES


=head2 C<account_minimum_inflow>

C<accountMinimumInflow>

A minimum amount that has to be paid in every month.


A account_minimum_inflow should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has account_minimum_inflow => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'accountMinimumInflow',
);


=head2 C<account_overdraft_limit>

C<accountOverdraftLimit>

An overdraft is an extension of credit from a lending institution when an
account reaches zero. An overdraft allows the individual to continue
withdrawing money even if the account has no funds in it. Basically the
bank allows people to borrow a set amount of money.


A account_overdraft_limit should be one of the following types:

=over

=item C<InstanceOf['SemanticWeb::Schema::MonetaryAmount']>

=back

=cut

has account_overdraft_limit => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'accountOverdraftLimit',
);


=head2 C<bank_account_type>

C<bankAccountType>

The type of a bank account.


A bank_account_type should be one of the following types:

=over

=item C<Str>

=back

=cut

has bank_account_type => (
    is        => 'rw',
    predicate => 1,
    json_ld   => 'bankAccountType',
);




=head1 SEE ALSO



L<SemanticWeb::Schema::FinancialProduct>

=cut

1;
