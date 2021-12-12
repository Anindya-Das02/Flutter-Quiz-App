import 'package:flutter/material.dart';
import 'package:quiz_app_2/logic/models/question_answer_manager.dart';
import '../constants/values.dart';

class QuestionDisplayWidget extends StatelessWidget {
  final int _index;

  QuestionDisplayWidget(this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      height: 130.0,
      width: double.infinity,
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            QuestionAnswerManager.questionText(_index),
            style: const TextStyle(
              fontSize: Values.questionTextFontSize,
            ),
          ),
        ),
      ),
    );
  }
}
