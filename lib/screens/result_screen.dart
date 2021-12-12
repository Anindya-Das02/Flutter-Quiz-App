import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int _finalScore;
  final Function _resetCallBack;

  ResultScreen(this._finalScore, this._resetCallBack);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Your Score Is: $_finalScore",
            style: const TextStyle(fontSize: 36.0),
          ),
          TextButton(
              onPressed: () {
                _resetCallBack();
              },
              child: const Text(
                "Try Again",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ))
        ],
      ),
    );
  }
}
