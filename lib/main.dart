import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choosen!');
  }

  @override // good practice to override return type here
  Widget build(BuildContext context) {
    var questions = [
      'What\'s is your favorite color?',
      'What\'s is your favorite animals?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 choosen!'),
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed: () {
                // do something
                print('Answer 3 choosen!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
