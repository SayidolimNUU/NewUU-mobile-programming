void main() {
  try {
    List<String> input = ['21', '-4', 'hohoho'];
    for (int i = 0; i < input.length; i++) {
      print('What is your age?');
      int age = int.parse(input[i]);
      print('Your age is: $age');
    }
  } on FormatException {
    print('Wrong format of input');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
