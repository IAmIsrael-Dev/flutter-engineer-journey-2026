import './transaction.dart';

class BankAccount {
  String accountName;
  double balance;

  BankAccount(this.accountName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print(
      'Deposited \$${amount.toStringAsFixed(2)}, new balance: \$${balance.toStringAsFixed(2)}',
    );

    Transaction transaction = Transaction('Deposit', amount, DateTime.now());
    transaction.addTransaction(transaction);
    print(transaction.transactionList);
    // transaction.printReceipt();

  }

  void withdraw(double amount) {
    if (amount < balance) {
      balance -= amount;
      print(
        'Withdrew \$${amount.toStringAsFixed(2)}, new balance: \$${balance.toStringAsFixed(2)}',
      );

      Transaction transaction = Transaction('Withdraw', amount, DateTime.now());
      transaction.addTransaction(transaction);
      // transaction.printReceipt();
    }
  }

  void checkBalance() {
    print('Current balance: \$$balance');
  }
}

void main() {
  BankAccount account1 = BankAccount('Israel', 1000.0);

  // account1.checkBalance();
  account1.deposit(454);
  // account1.withdraw(25);
  // account1.checkBalance();
}
