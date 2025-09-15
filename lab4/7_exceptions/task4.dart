class InvalidInputException implements Exception {}

void textProcessor(String text) {
  if (text.isEmpty) throw InvalidInputException();
}

void main() {
  try {
    textProcessor('');
  } catch (e) {
    if (e.runtimeType == InvalidInputException) print('Invalid input');
    else print('An unexpected error occurred: $e');
  }
}
