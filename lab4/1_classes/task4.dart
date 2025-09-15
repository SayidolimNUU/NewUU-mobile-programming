class BankAccount {
  int accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  double getBalance() {
    return balance;
  }

  void deposit(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Deposit amount must be positive');
    }
    balance += amount;
    print('Deposited: ');
    print(amount);
    print('Balance: ');
    print(getBalance());
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Withdrawal amount must be positive');
    }
    if (amount > balance) {
      throw ArgumentError('Balance is less than withdrawal amount');
    }
    balance -= amount;
    print('Withdrew: ');
    print(amount);
    print('Balance: ');
    print(getBalance());
  }
}

void main() {
  var myAccount = BankAccount(1, 'Andrew Anderson', 1000.0);
  myAccount.deposit(100.0);
  myAccount.withdraw(1000.0);
  myAccount.deposit(-100.0); //throws negative deposit error
  myAccount.withdraw(-100.0); //throws negative withdrawal error
  myAccount.withdraw(10000.0); //throws "balance is smaller than withdrawal amount" error
}
