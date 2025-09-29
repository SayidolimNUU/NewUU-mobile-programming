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
  int _color = -1;
  void _changeToRed() {
    setState(() {
      _color = 0;
    });
  }

  void _changeToGreen() {
    setState(() {
      _color = 1;
    });
  }

  void _changeToBlue() {
    setState(() {
      _color = 2;
    });
  }

  Color _getColor() {
    if (_color == -1) {
      return Colors.grey;
    } else if (_color == 0) {
      return Colors.red;
    } else if (_color == 1) {
      return Colors.green;
    } else {
      return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Color Box')),
        body: Column(
          children: [
            Container(width: 200, height: 200, color: _getColor()),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _changeToRed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Red'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _changeToGreen,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Green'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _changeToBlue,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Blue'),
                ),
              ],
            )
          ],
        ));
  }
}
