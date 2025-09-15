Future<String> reportGenerator() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Report generated!';
}

void main() async {
  print('Wait...');
  print(await reportGenerator());
  print('Bye!');
}
