import 'package:flutter/material.dart';
import 'package:quiz_app_2/logic/models/question_answer_manager.dart';

class OptionsDisplayWidget extends StatelessWidget {
  final int _index;
  final Function _incrementCallBack;

  OptionsDisplayWidget(this._index, this._incrementCallBack);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 13.0, right: 13.0, top: 10.0),
      child: Column(
        children: [
          ElevatedButton(
            child: const Text(
              "True",
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              var choice = true;
              _incrementCallBack(
                QuestionAnswerManager.checkAnswer(_index, choice),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.green,
                minimumSize: const Size(double.infinity, 40)),
          ),
          ElevatedButton(
            child: const Text(
              "False",
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              var choice = false;
              _incrementCallBack(
                QuestionAnswerManager.checkAnswer(_index, choice),
              );
            },
            style: ElevatedButton.styleFrom(
                primary: Colors.red,
                minimumSize: const Size(double.infinity, 40)),
          ),
        ],
      ),
    );
  }
}
