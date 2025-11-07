import 'bank_account.dart';

abstract class InterestBearingAccount extends BankAccount {
  double interestRate;

  InterestBearingAccount(String accountNumber, String accountHolder, double balance, this.interestRate)
      : super(accountNumber, accountHolder, balance);

  void addInterest() {
    double interest = balance * interestRate / 100;
    balance += interest;
    print("Interest added to ${accountHolder}: \$${interest.toStringAsFixed(2)}");
  }
}
