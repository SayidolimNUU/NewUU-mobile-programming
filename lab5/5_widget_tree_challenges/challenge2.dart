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
        body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                SizedBox(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.network(
                      'https://i.etsystatic.com/9165766/r/il/8872c0/3268109495/il_fullxfull.3268109495_6jbw.jpg',
                      width: 100,
                      height: 100,
                    ),
                )),
                SizedBox(width: 20),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Silksong'),
                    SizedBox(height: 10),
                    Text('Garana... Shaw! Adino! Hegale... Git Gud!'),
                    SizedBox(height: 10),
                    Text('\$7.99')
                  ],
                ))
              ],
            )));
  }
}
