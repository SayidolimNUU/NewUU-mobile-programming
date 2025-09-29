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
  List<String> _items = [];
  final TextEditingController _textController = TextEditingController();

  void _addItem() {
    if (_textController.text.isNotEmpty) {
      setState(() {
        _items.add(_textController.text);
        _textController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab')),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(hintText: 'Enter item'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_items[index]),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }
}
