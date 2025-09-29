import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StatefulGuy(),
    );
  }
}

class StatefulGuy extends StatefulWidget {
  const StatefulGuy({super.key});

  @override
  State<StatefulGuy> createState() => _State();
}

class _State extends State<StatefulGuy> {
  bool _isVisible = true;
  final String _defaultString =
      'You should only see this if visibility is true';
  String _toBeVisible = '';

  void _changeVisibility() {
    setState(() {
      _isVisible = !_isVisible;
      _toBeVisible = _isVisible ? _defaultString : '';
    });
  }

  @override
  void initState() {
    super.initState();
    _toBeVisible = _defaultString;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Visibility: $_isVisible',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 10),
            Text(
              '$_toBeVisible',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisibility();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
