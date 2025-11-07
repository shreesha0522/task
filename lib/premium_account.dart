import 'interest_bearing.dart';

class PremiumAccount extends InterestBearingAccount {
  PremiumAccount(String accountNumber, String accountHolder, double balance)
      : super(accountNumber, accountHolder, balance, 5.0);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} to Premium Account");
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Premium Account");
    } else {
      print("Insufficient funds!");
    }
  }
}
