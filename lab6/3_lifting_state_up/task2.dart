import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ParentWidget(),
    );
  }
}

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  String _name = "Guest";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Greeting App')),
      body: Greeting(name: _name),
    );
  }
}

class Greeting extends StatelessWidget {
  final String name;

  const Greeting({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello, $name',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
