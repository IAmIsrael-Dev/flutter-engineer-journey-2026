class Transaction {
  String type;
  double amount;
  DateTime date;

  Transaction(this.type, this.amount, this.date);

  List<Transaction> transactionList = [];

  void printReceipt() {
    print('$type - $amount - $date');
  }

  void addTransaction(Transaction transaction) {
    transactionList.add(transaction);
    print(
      'Transaction added: ${transaction.type} - ${transaction.amount} - ${transaction.date}',
    );
  }
}

void main() {
  Transaction transaction1 = Transaction('Deposit', 200.0, DateTime.now());
  Transaction transaction2 = Transaction(
    'Withdraw',
    100.0,
    DateTime(2027, 09, 04),
  );

  transaction1.printReceipt();
  transaction2.printReceipt();
}
