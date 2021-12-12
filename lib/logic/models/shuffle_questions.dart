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
  QuestionAnswer("September has 31 days", false),
  QuestionAnswer(
      "The Pacific Ocean is the largest and deepest of the world ocean", true),
  QuestionAnswer("Akbar was the 1st Mughal emperor", false),
  QuestionAnswer("Children's day is celebrated on 15 August", false),
  QuestionAnswer("Husky is a breed of cat", false),
  QuestionAnswer("Dhaulagiri is the 2nd biggest mountain in the world", false),
  QuestionAnswer("India currency is called Rupee", true),
  QuestionAnswer("Russia is the biggest country in terms of land area", true),
  QuestionAnswer("Korean currency is called Won", true),
  QuestionAnswer("Englands national sport is Cricket", true),
];

List<QuestionAnswer> shuffledList() {
  _x.shuffle();
  return _x;
}
