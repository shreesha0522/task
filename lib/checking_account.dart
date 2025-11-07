import 'bank_account.dart';

class CheckingAccount extends BankAccount {
  CheckingAccount(String accountNumber, String accountHolder, double balance)
      : super(accountNumber, accountHolder, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} to Checking Account");
  }

  @override
  void withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Checking Account");
    } else {
      print("Insufficient funds!");
    }
  }
}
