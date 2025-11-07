import 'interest_bearing.dart';

class SavingsAccount extends InterestBearingAccount {
  SavingsAccount(String accountNumber, String accountHolder, double balance, double interestRate)
      : super(accountNumber, accountHolder, balance, interestRate);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} to Savings Account");
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Savings Account");
    } else {
      print("Insufficient funds!");
    }
  }
}
