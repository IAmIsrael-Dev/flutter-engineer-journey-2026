// inheritance

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void eat() {
    print('$name is eating');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);
}

//Abstract class

abstract class User {
  String name;

  User(this.name);

  void displayRole();
  String get displayName => name.capitalized();
}

// User user = User(); // this wrong

// Mixin
mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}

// Extension

// extension NameFormat on String {
//   String capitalized() => this[0].toUpperCase() + substring(1);
// }

// A student & librarian class that extends an abstract and mixin

class Student extends User with Logger {
  Student(String name) : super(name);

  @override
  void displayRole() {
    print('$name is a Student');
  }

  void borrowBook(String book) {
    log('$name borrow "$book"');
  }
}

class Librarian extends User with Logger {
  Librarian(String name) : super(name);

  @override
  void displayRole() {
    print('$name is a Librarian');
  }

  void addBook(String book) {
    log('$name added "$book" to the library');
  }
}

class Teacher extends User with Logger {
  Teacher(String name) : super(name);

  @override
  void displayRole() {
    print('$name is a Teacher');
  }

  void recommendBook(String book) {
    log('$name recommends "$book"');
  }
}

// Another form of extension

extension nameFormatter on String {
  String capitalized() {
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }
}

// Putting it all tohgether

void main() {
  Student student = Student('israel');
  Librarian librarian = Librarian('grace');
  Teacher teacher = Teacher('mike');

  student.displayRole();
  librarian.displayRole();
  teacher.displayRole();

  student.borrowBook('Clean code');
  librarian.addBook('flutter in action');
  teacher.recommendBook('Flutter clean architecture');

  print(student.name.capitalized());
  print(librarian.name.capitalized());
  print(teacher.name.capitalized());
  print(student.displayName);
}
