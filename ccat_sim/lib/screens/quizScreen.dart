import 'dart:async';

import 'package:ccat_sim/classes/simClass.dart';
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
  double currentTime = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    showTime();
    runTime();
  }

  showTime() {
    setState(() {
      simClass.runTime();
    });
  }

  void runTime() {
    Timer timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if (currentTime != simClass.maxTime - 1) {
        setState(() {
          currentTime += 0.015;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double progress = currentTime / simClass.maxTime;

    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            LinearProgressIndicator(
              value: progress,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: QuizWrapper(simClass: simClass),
            ),
          ],
        ));
  }
}
