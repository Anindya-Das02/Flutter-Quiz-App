import 'package:quiz_app_2/logic/models/question_answer.dart';

var _x = [
  QuestionAnswer("2 a prime number", true),
  QuestionAnswer("India's capital is Delhi", true),
  QuestionAnswer("Saturn is the 4th planet in our solar system", false),
  QuestionAnswer("Children's day is celebrated on 15 August", false),
  QuestionAnswer("The Taj Mahal is situated in Agra", true),
  QuestionAnswer("Narendra Modi is the first prime minister of India", false),
  QuestionAnswer("India has 29 states", false),
  QuestionAnswer("Asia is the biggest continent", true),
  QuestionAnswer("Japanese currency is called Yen", true),
  QuestionAnswer("Germany is in North America", false),
];

List<QuestionAnswer> shuffledList() {
  _x.shuffle();
  return _x;
}
