import 'package:ccat_sim/screens/AuthPage.dart';
import 'package:flutter/material.dart';

import '../classes/simClass.dart';

class EndQuizScreen extends StatefulWidget {
  SimClass simClass;
  EndQuizScreen({super.key, required this.simClass});

  @override
  State<EndQuizScreen> createState() => _EndQuizScreenState(simClass);
}

class _EndQuizScreenState extends State<EndQuizScreen> {
  SimClass simClass;
  _EndQuizScreenState(this.simClass);
  double score = SimClass.user.getScore() as double;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Quiz has ended'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Quiz Completed!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'Your Score: $score/${simClass.questions.length}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                simClass.reset();
                // Navigate back to the home screen or quiz start screen
                // Navigator.of(context).pop();
                // Navigator.of(context).pop();
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return QuizStartPage();
                }));
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
