class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print('My name is $name and i am $age years old.');
  }
}

void main() {
  Person person1 = Person('Israel', 25);
  Person person2 = Person('Tommy', 35);

  person1.introduce();
  person2.introduce();
}
