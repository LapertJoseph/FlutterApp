import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

/**
 * Create stateless widget to split quizz into another widget
 * @ List<Map<String, Object>> questions
 * @ int questionIndex
 * @ Function answerQuestion
 * 
 * return Quizz()
 */
class Quizz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // initialise le constructeur
  Quizz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(
              answer['score'],
            ),
            answer['text'],
          );
        }).toList()
      ],
    );
  }
}
