void divide(int a, int b) {
  try {
    var result = a ~/ b;
    print('Result: $result');
  } on Error {
    if (b == 0) print('Error: Cannot divide by zero.');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}

void main() {
  divide(10, 2);
  divide(10, 0);
}
