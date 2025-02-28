use utf8;

package SemanticWeb::Schema::DepositAccount;

# ABSTRACT: A type of Bank Account with a main purpose of depositing funds to gain interest or other benefits.

use Moo;

extends qw/ SemanticWeb::Schema::BankAccount SemanticWeb::Schema::InvestmentOrDeposit /;


use MooX::JSON_LD 'DepositAccount';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A type of Bank Account with a main purpose of depositing funds to gain
interest or other benefits.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::InvestmentOrDeposit>

=cut

1;
