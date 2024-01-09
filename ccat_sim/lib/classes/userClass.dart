import 'package:ccat_sim/classes/questionClass.dart';

class UserClass {
  String userName;
  String userEmail;
  List<Question> simQuestions = [];
  List<int> simAnswers = [];
  List<int> userAnswers = [];

  UserClass(this.userName, this.userEmail, this.simQuestions) {
    userAnswers = List.generate(simQuestions.length, (index) => -1);

    for (Question question in simQuestions) {
      var value =
          question.answers.indexWhere((element) => element == question.answer);

      simAnswers.add(value);
    }
  }

  int getScore() {
    int score = _compareLists(simAnswers, userAnswers);
    return score;
  }

  int _compareLists(List<dynamic> list1, List<dynamic> list2) {
    if (list1.length != list2.length) {
      throw ArgumentError("Both lists must have the same length");
    }

    int count = 0;

    for (int i = 0; i < list1.length; i++) {
      if (list1[i] == list2[i]) {
        count++;
      }
    }

    return count;
  }

  answerQuestion(int qNumber, int value) {
    userAnswers[qNumber] = value;
  }
}
