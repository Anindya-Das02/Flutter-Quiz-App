import 'package:flutter/material.dart';
import 'package:quiz_app_2/logic/models/question_answer_manager.dart';
import 'package:quiz_app_2/screens/quiz_screen.dart';
import 'package:quiz_app_2/screens/result_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  int _score = 0;
  final int _totalQuestions = 10;

  _incrementQuestionIndexCallBack(_choice) {
    setState(() {
      _score = _choice ? _score + 1 : _score;
      _index++;
    });
  }

  _resetQuizCallBack() {
    setState(() {
      QuestionAnswerManager.updateQuestionAnswerList();
      _score = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quiz App 2",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          backgroundColor: Colors.deepPurple,
        ),
        body: (_index < _totalQuestions)
            ? QuizScreen(
                _index,
                _score,
                _totalQuestions,
                _incrementQuestionIndexCallBack,
              )
            : ResultScreen(
                _score,
                _resetQuizCallBack,
              ),
      ),
    );
  }
}
