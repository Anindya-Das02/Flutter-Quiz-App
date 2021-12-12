import 'package:quiz_app_2/logic/models/question_answer.dart';
import 'shuffle_questions.dart' as questions_list;

class QuestionAnswerManager {
  static final List<QuestionAnswer> _questionAnswerList =
      questions_list.shuffledList();

  static String questionText(int index) => _questionAnswerList[index].question;

  static int get totalQuestionsCount => _questionAnswerList.length;

  static void updateQuestionAnswerList() {
    _questionAnswerList.shuffle();
  }

  static bool checkAnswer(int index, bool choice) {
    return _questionAnswerList[index].answer == choice;
  }
}
