import '../lib/bank.dart';
import '../lib/checking_account.dart';
import '../lib/savings_account.dart';
import '../lib/premium_account.dart';
import '../lib/student_account.dart';

void main() {
  var bank = Bank();

  var acc1 = CheckingAccount("001", "Alice", 5000);
  var acc2 = SavingsAccount("002", "Bob", 8000, 3.5);
  var acc3 = PremiumAccount("003", "Charlie", 15000);
  var acc4 = StudentAccount("004", "Diana", 1000);

  bank.createAccount(acc1);
  bank.createAccount(acc2);
  bank.createAccount(acc3);
  bank.createAccount(acc4);

  acc1.withdraw(700);
  acc2.withdraw(350);
  acc3.deposit(500);
  acc4.deposit(4000);

  bank.transfer("001", "002", 100);
  bank.applyMonthlyInterest();

  acc1.displayInfo();
  acc2.displayInfo();
  acc3.displayInfo();
  acc4.displayInfo();
}
