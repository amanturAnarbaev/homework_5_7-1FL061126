class Bank {
  String name = '';
  double _balance = 0;

  Bank(this.name, double initialBalance) {
    _balance = initialBalance;
  }

  Bank.empty(this.name) {
    _balance = 0;
  }

  double get balance => _balance;

  void deposit(double amount) {
    if (amount < 0) {
      print('you cannot deposit a -ve number');
      return;
    } else {
      _balance += amount;
      print('your account has been deposited for $amount');
    }
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('you cannot take more than you have');
      return;
    } else {
      _balance -= amount;
      print('you has taken $amount your balance');
    }
  }
}
