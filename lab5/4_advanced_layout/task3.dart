// Answer: now the strip is vertical, but since we didn't specify width
// for the green container, it is as wide as the screen allows

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 4',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Lab 4'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
            Expanded(
              flex: 2,
              child: Container(height: 100, color: Colors.green),
            ),
          ],
        ));
  }
}
