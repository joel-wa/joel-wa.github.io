import 'package:ccat_sim/backend/serverClass.dart';
import 'package:ccat_sim/classes/questionClass.dart';
import 'package:ccat_sim/classes/userClass.dart';
import 'dart:async';

class SimClass {
  static late UserClass user;
  SimClass() {
    //Get questions from server First
    questions = ServerClass().getServerQuestions();
    user = UserClass('userName', 'userEmail', questions);
    maxTime = 18 * questions.length;
  }

  List<Question> questions = [
    Question('What is your Name', ['Joel', 'Martin', 'Gabriel'], 'Joel'),
    Question('How old are you', ['Joel', 'Martin', 'Gabriel'], 'Joel'),
    Question('What is the name of your School', ['Joel', 'Martin', 'Gabriel'],
        'Joel'),
  ];
  static bool canAnswer = true;
  late int maxTime;
  double currentTime = 0; /////////////////Change to zero to start the timer
  final StreamController<double> streamController = StreamController<double>();
  late StreamSubscription<double> streamSubscription;

  runTime() {
    final StreamSink<double> streamSink = streamController.sink;

    streamSubscription = streamController.stream.listen((data) {
      print('Received data: $data');
    });

    Timer timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (currentTime <= maxTime) {
        currentTime += 0.1;
        streamSink.add(currentTime as double);
        print(currentTime);
      } else {
        timer.cancel();
        canAnswer = false;
        print('Time up');
      }
    });
    // streamController.close();

    return true;
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

  void reset() {
    currentTime = 0;
    maxTime = 18 * questions.length;
    canAnswer = true;
  }
}
