import 'package:flutter/material.dart';

// Stateless widget for render answers
class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
