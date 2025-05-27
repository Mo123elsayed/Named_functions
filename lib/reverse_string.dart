import 'dart:io';


void reverseString(String input) {
  String reversed = input.split('').reversed.join('');
  print("Reversed String: $reversed");
}
void main(List<String> args) {
  print("Please enter a string to reverse:");
  String input = stdin.readLineSync()!;
  reverseString(input);
}
