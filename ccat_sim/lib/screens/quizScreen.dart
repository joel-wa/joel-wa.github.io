import 'dart:async';

import 'package:ccat_sim/classes/simClass.dart';
import 'package:ccat_sim/screens/EndQuizPage.dart';
import 'package:ccat_sim/widgets/quizWrapper.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  SimClass simClass;
  QuizScreen({super.key, required this.simClass});

  @override
  State<QuizScreen> createState() => _QuizScreenState(simClass);
}

class _QuizScreenState extends State<QuizScreen> {
  SimClass simClass;
  _QuizScreenState(this.simClass);
  late double currentTime;
  late StreamSubscription<double> streamSubscription;
  bool completed = false;

  @override
  void initState() {
    super.initState();
    currentTime = simClass.currentTime as double;
    endQuiz();
    showTime();
    getStream();
  }

  endQuiz() async {
    await Future.delayed(Duration(seconds: simClass.maxTime));
    setState(() {
      completed = true;
    });
  }

  showTime() {
    setState(() {
      simClass.runTime();
      streamSubscription = simClass.streamSubscription;
      currentTime = simClass.currentTime as double;
    });
  }

  getStream() {
    streamSubscription.onData((data) {
      setState(() {
        currentTime = data;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = currentTime / simClass.maxTime;

    return (!completed)
        ? Scaffold(
            // appBar: AppBar(),
            body: Column(
            children: [
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: progress,
              ),
              const SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.9,
                child: QuizWrapper(simClass: simClass),
              ),
            ],
          ))
        : EndQuizScreen(simClass: simClass);
  }
}
