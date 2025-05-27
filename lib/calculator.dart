import 'dart:io';
// This is a basic Flutter application entry point.
void main(List<String> args) {
  print("******************This is Calculator App******************");
  print("Enter first number:");
  double num1 =double.parse(stdin.readLineSync()!);
  print("Please,Enter second number:");
  double num2 = double.parse(stdin.readLineSync()!);
  print("Please,Enter the operator (+, -, *, /):");
  String operator = stdin.readLineSync()!;
  double? result;
  if (operator == '+') {
    result = add(num1, num2);
  } else if (operator == '-') {
    result = subtract(num1, num2);
  } else if (operator == '*') {
    result = multiply(num1, num2);
  } else if (operator == '/') {
    result = divide(num1, num2);
  } else {
    print("Invalid operator");
  }
  print("The result of $num1 $operator $num2 is: $result");
  print("******************Thank you for using Calculator App******************");

}

double add(double num1,double num2) => num1 + num2;
double subtract(double num1,double num2) => num1 - num2;
double multiply(double num1,double num2) => num1 * num2;
double divide(double num1,double num2) {
  if (num2 == 0) {
    throw Exception("Cannot divide by zero");
  }
  return num1 / num2;
}