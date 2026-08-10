class User {
  String name;

  User(this.name);

  @override
  String toString() {
    return 'User(name: $name)';
  }
}

class UserRepository {
  final List<User> _users = [];

  void addUsers(User user) {
    _users.add(user);
  }

  List<User> getAll() {
    return _users;
  }
}

class Product {
  String name;

  Product(this.name);
}

class ProductRepository {
  final List<Product> _products = [];

  void add(Product product) {
    _products.add(product);
  }

  List<Product> getAll() {
    return _products;
  }
}

class Repository<T> {
  final List<T> _items = [];

  void add(T item) {
    _items.add(item);
  }

  T? getAt(int index){
    if(index >= 0 && index < _items.length){
      return _items[index];
    } 
    return null;
  }

  List<T> getAll() {
    return _items;
  }
}

void main() {
  UserRepository repo = UserRepository();

  Repository<User> repo2 = Repository<User>();

  Repository<String> repo3 = Repository<String>();

  User testUser = User('tems');

  repo.addUsers(User('Israel'));
  repo.addUsers(User('Grace'));
  repo2.add(User('Temi'));
  repo2.add(User('Lizzy'));
  repo3.add(testUser.toString());

  print(repo.getAll());
  print(repo2.getAll().map((i) => i.name));
  print(testUser.toString());
  print(repo2.getAt(0));
  print(repo2.getAt(8));
}
