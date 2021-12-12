import 'package:flutter/material.dart';
import '../constants/values.dart';

class TopInfoBar extends StatelessWidget {
  final int _currNum;
  final int _totalNum;
  final int _score;

  TopInfoBar(this._currNum, this._totalNum, this._score);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            flex: 15,
            child: Text(
              "Ques.: ${_currNum + 1}/$_totalNum",
              style: const TextStyle(fontSize: Values.topBarTextFontSize),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              "Score: $_score",
              style: const TextStyle(fontSize: Values.topBarTextFontSize),
            ),
          ),
        ],
      ),
    );
  }
}
