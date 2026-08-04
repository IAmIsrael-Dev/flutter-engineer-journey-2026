var name = "israel";
var age = 34;
var height = 3.89;
String jobRole = 'Banker';
int misCode = 00300721;

final String animal = 'cat';

String? surName;

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  return a / b;
}

dynamic calculator(double a, double b, String operation) {
  switch (operation) {
    case 'add':
      return add(a, b);
    case 'subtract':
      return subtract(a, b);
    case 'multiply':
      return multiply(a, b);
    case 'divide':
      return divide(a, b);
    default:
      return "invslid operation";
  }
}

dynamic calculator2(double a, double b, String operation) {
  if (operation == 'add') {
    return add(a, b);
  } else if (operation == 'subtract') {
    return subtract(a, b);
  } else if (operation == 'multiply') {
    return multiply(a, b);
  } else if (operation == 'divide') {
    return divide(a, b);
  } else {
    return "invalid operation";
  }
}

const Object i = 3;
const list = [i as int];
const map = {if (i is int) i: 'int'};

bool isEven(int num) {
  return num % 2 == 0;
}

List<int> numVar = [1,2,3,4,5,6];




void main() {
  var [a,b,c,d,e,f] = numVar;
  print('$a, $b, $c, $d, $e, $f');
  
}
