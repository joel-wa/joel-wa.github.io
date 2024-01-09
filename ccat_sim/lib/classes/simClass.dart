import 'package:ccat_sim/classes/questionClass.dart';
import 'package:ccat_sim/classes/userClass.dart';
import 'dart:async';

class SimClass {
  static late UserClass user;
  SimClass() {
    //Get questions from server First
    user = UserClass('userName', 'userEmail', questions);
  }

  final List<Question> questions = [
    Question('What is your Name', ['Joel', 'Martin', 'Gabriel'], 'Joel'),
    Question('How old are you', ['Joel', 'Martin', 'Gabriel'], 'Joel'),
    Question('What is the name of your School', ['Joel', 'Martin', 'Gabriel'],
        'Joel'),
  ];
  static bool canAnswer = true;
  final int maxTime = 10;
  int currentTime = 9; /////////////////Change to zero to start the timer

  void runTime() {
    Timer timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (currentTime != maxTime - 1) {
        currentTime += 1;
        print(currentTime);
      } else {
        timer.cancel();
        canAnswer = false;
        print('Time up');
      }
    });
  }

  List<Question> getQuestions() {
    return questions;
  }

  void onAnswerQuestion(int questionNumber, int answer) {
    if (canAnswer) {
      user.answerQuestion(questionNumber, answer);
      print(user.userAnswers);
    }
  }
}
