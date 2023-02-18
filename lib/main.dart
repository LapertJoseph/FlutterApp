import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override // good practice to override return type here
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
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
