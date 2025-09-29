import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// UserModel that extends ChangeNotifier
class UserModel extends ChangeNotifier {
  String _username = "Guest";
  String get username => _username;

  void changeToAdmin() {
    _username = "Admin";
    notifyListeners();
  }
}

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserModel>(
              builder: (context, userModel, child) => Text(
                'Hello, ${userModel.username}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<UserModel>(context, listen: false).changeToAdmin();
              },
              child: Text('Change to Admin'),
            ),
          ],
        ),
      ),
    );
  }
}