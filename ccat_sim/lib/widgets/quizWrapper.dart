import 'package:ccat_sim/classes/simClass.dart';
import 'package:ccat_sim/screens/EndQuizPage.dart';
import 'package:ccat_sim/widgets/questionCard.dart';
import 'package:flutter/material.dart';

class QuizWrapper extends StatefulWidget {
  SimClass simClass;
  QuizWrapper({super.key, required this.simClass});

  @override
  State<QuizWrapper> createState() => _QuizWrapperState(simClass);
}

class _QuizWrapperState extends State<QuizWrapper> {
  SimClass simClass;
  PageController controller = PageController();
  _QuizWrapperState(this.simClass);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Stack(alignment: Alignment.center, children: [
        PageView.builder(
            controller: controller,
            itemCount: simClass.questions.length,
            itemBuilder: (BuildContext context, index) {
              return QuestionCard(
                simClass: simClass,
                question: simClass.getQuestions()[index],
                questionNumber: index,
              );
            }),
        Positioned(
          bottom: 50,
          child: ElevatedButton(
              onPressed: () {
                if (controller.page == simClass.getQuestions().length - 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return EndQuizScreen(
                      simClass: simClass,
                    );
                  }));
                }
                controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease);
              },
              child: const Text('Confirm')),
        )
      ])),
    );
  }
}
