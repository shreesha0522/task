abstract class BankAccount {
  final String _accountNumber;
  final String _accountHolder;
  double _balance;

  BankAccount(this._accountNumber, this._accountHolder, this._balance);

  String get accountNumber => _accountNumber;
  String get accountHolder => _accountHolder;
  double get balance => _balance;

  set balance(double value) => _balance = value;

  void deposit(double amount);
  void withdraw(double amount);

  void displayInfo() {
    print('Account Number: $_accountNumber');
    print('Account Holder: $_accountHolder');
    print('Balance: \$${_balance.toStringAsFixed(2)}');
  }
}
