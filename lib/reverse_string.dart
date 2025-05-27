import 'dart:io';

void main(List<String> args) {
  print("Please enter a string to reverse:");
  String input = stdin.readLineSync()!;
  reverseString(input);
}

void reverseString(String input) {
  // String reversed = input.split('').reversed.join('');
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed += input[i];
  }
  // print("Reversed String: $reversed");
  isPalindrome(input, reversed);
}

void isPalindrome(String input, String reversed) {
  if (input == reversed) {
    print("The string is a palindrome.");
    // return true;
  } else {
    print("The string is not a palindrome.");
    // return false;
  }
}
