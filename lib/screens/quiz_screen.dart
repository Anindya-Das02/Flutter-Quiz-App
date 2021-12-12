import 'package:flutter/material.dart';
import 'package:quiz_app_2/logic/models/question_answer_manager.dart';
import '../widgets/top_bar.dart';
import '../widgets/question_widget.dart';
import '../widgets/option_widget.dart';

class QuizScreen extends StatelessWidget {
  final int _score;
  final int _index;
  final int _totalQns;
  final Function _incrementIndexCallBack;

  QuizScreen(
    this._index,
    this._score,
    this._totalQns,
    this._incrementIndexCallBack,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TopInfoBar(_index, _totalQns, _score),
        QuestionDisplayWidget(_index),
        OptionsDisplayWidget(_index, _incrementIndexCallBack),
      ],
    );
  }
}
