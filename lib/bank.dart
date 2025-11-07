import 'bank_account.dart';
import 'interest_bearing.dart';  

class Bank {
  final Map<String, BankAccount> _accounts = {};

  void createAccount(BankAccount account) {
    _accounts[account.accountNumber] = account;
    print("Account created for ${account.accountHolder}");
  }

  void transfer(String fromAcc, String toAcc, double amount) {
    if (_accounts.containsKey(fromAcc) && _accounts.containsKey(toAcc)) {
      _accounts[fromAcc]!.withdraw(amount);
      _accounts[toAcc]!.deposit(amount);
      print("Transferred \$${amount.toStringAsFixed(2)} from $fromAcc to $toAcc");
    } else {
      print("One or both accounts not found!");
    }
  }

  void applyMonthlyInterest() {
    for (var account in _accounts.values) {
      if (account is InterestBearingAccount) {
        account.addInterest();
      } 
    }
  }
}
