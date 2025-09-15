Future<int> fetchUserId() async {
  await Future.delayed(Duration(seconds: 1));
  return 123;
}

Future<String> fetchUserDetails(int userId) async {
  await Future.delayed(Duration(seconds: 1));
  return 'User $userId: Abbos Atabaev';
}

void main() async {
  print(await fetchUserDetails(await fetchUserId()));
}
