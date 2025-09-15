Future<Map<String, dynamic>> fetchUserData() async {
  print('Fetching user data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched!');
  return {'id': 101, 'name': 'Alice'};
}

void main() async {
  print('Program started.');
  var userData = await fetchUserData();
  print('User Name: ${userData['name']}');
  print('Program finished.');
}
