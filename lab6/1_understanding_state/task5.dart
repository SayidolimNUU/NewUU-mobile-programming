import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ChangingUsername(),
      ),
    );
  }
}

class ChangingUsername extends StatefulWidget {
  const ChangingUsername({super.key});

  @override
  State<ChangingUsername> createState() => _ChangingUsername();
}

class _ChangingUsername extends State<ChangingUsername> {
  String defaultStr = 'Enter your username';
  String _userName = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              if (value.isEmpty) {
                value = defaultStr;
              }
              setState(() {
                _userName = value;
              });
            },
          ),
          Text(_userName),
        ],
      ),
    );
  }
}
