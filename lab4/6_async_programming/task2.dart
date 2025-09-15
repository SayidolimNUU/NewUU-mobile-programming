Future<String> reportGenerator() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Report generated!';
}

void main() {
  print('Wait...');
  reportGenerator().then((result) {
    print(result);
    print('Bye!');
  });
}
