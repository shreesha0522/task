import 'bank_account.dart';

class StudentAccount extends BankAccount {
  StudentAccount(String accountNumber, String accountHolder, double balance)
      : super(accountNumber, accountHolder, balance);

  @override
  void deposit(double amount) {
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)} to Student Account");
  }

  @override
  void withdraw(double amount) {
    if (balance - amount >= 0) {
      balance -= amount;
      print("Withdrew \$${amount.toStringAsFixed(2)} from Student Account");
    } else {
      print("Withdrawal not allowed — insufficient balance.");
    }
  }
}
