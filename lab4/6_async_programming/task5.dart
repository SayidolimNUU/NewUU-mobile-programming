Future<String> fetchConfiguration() async {
  await Future.delayed(Duration(seconds: 1));
  return 'dark mode: on';
}

Future<String> loadResources() async {
  await Future.delayed(Duration(seconds: 2));
  return 'black, grey, gray, white a little bit';
}

void main() async {
  var results = await Future.wait([
    fetchConfiguration(),
    loadResources()
  ]);
  print('${results[0]}');
  print('${results[1]}');
  
  print('System Ready!');
}
