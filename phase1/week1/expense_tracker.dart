import 'dart:async';

class Expense {
  final String title;
  final double amount;
  final DateTime date;

  Expense({required this.title, required this.amount, required this.date});

  @override
  String toString() {
    return '$title - #${amount.toStringAsFixed(2)} - $date';
  }
}

class ExpenseService {
  final List<Expense> _expenses = [];

  //Streamcontrollerr
  final StreamController<String> _controller =
      StreamController<String>.broadcast();

  Stream<String> get updates => _controller.stream;

  void addExpense(String title, double amount) {
    final expense = Expense(title: title, amount: amount, date: DateTime.now());

    _expenses.add(expense);
    _controller.add('Added: $title');
  }

  void listExpenses() {
    if (_expenses.isEmpty) {
      print('No expenses recorded');
      return;
    }

    for (final expense in _expenses) {
      print(expense);
    }
  }

  void deleteExpense(int index) {
    if (index >= 0 && index < _expenses.length) {
      final removed = _expenses.removeAt(index);
      _controller.add('Deleted: ${removed.title}');
    } else {
      print('Invalid Expense index');
    }
  }

  double totalExpense() {
    double total = 0;

    for (final expense in _expenses) {
      total += expense.amount;
    }

    return total;
  }

  List<Expense> getAbove(double amount) {
    return _expenses.where((element) => element.amount > 4000).toList();
  }

  Future<void> saveExpense() async {
    print('Saving expenses...');
    await Future.delayed(Duration(seconds: 3));
    print('Expense saved successfully');
  }

  void dispose() {
    _controller.close();
  }
}

Future<void> main() async {
  final service = ExpenseService();

  service.updates.listen((message) {
    print('[STREAM]: $message');
  });

  service.addExpense('Transport', 2500);
  service.addExpense('Lunch', 1000);
  service.addExpense('Data Subscription', 5000);
  service.addExpense('Electricity', 3000);

  await Future.delayed(Duration(seconds: 2));

  print('\n--- Expense ---');
  service.listExpenses();

  print('\nTotal: #${service.totalExpense().toStringAsFixed(2)}');

  await Future.delayed(Duration(seconds: 2));

  service.deleteExpense(1);

  await Future.delayed(Duration(seconds: 2));

  print('\n---Update Expense List---');
  service.listExpenses();

  print('\nUpdated Total: #${service.totalExpense().toStringAsFixed(2)}');

  await Future.delayed(Duration(seconds: 2));

  print('\n--List of expenses above 4000---');
  print(service.getAbove(4000));

  await service.saveExpense();

  service.dispose();
}
