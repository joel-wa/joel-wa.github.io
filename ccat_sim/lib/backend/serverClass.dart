import 'dart:math';

import 'package:ccat_sim/backend/localServer.dart';

import '../classes/questionClass.dart';

class ServerClass {
  List<Question> getServerQuestions(int questionLength) {
    List<Question> questions = LocalServer().q2;
    List<Question> selected = [];

    if (questionLength > questions.length) {
      questionLength = questions.length;
    }

    void addRandomElement() {
      if (questions.isEmpty) {
        print("Original list is empty.");
        return;
      }

      Random random = Random();
      int randomIndex = random.nextInt(questions.length);
      Question randomElement = questions[randomIndex];

      selected.add(randomElement);
      questions.removeAt(randomIndex);

      print("Added $randomElement to selected.");
    }

    for (int i = 0; i < questionLength; i++) {
      addRandomElement();
    }

    return selected;
  }
}
