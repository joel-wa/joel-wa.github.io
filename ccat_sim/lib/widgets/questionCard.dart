import 'package:ccat_sim/classes/simClass.dart';
import 'package:ccat_sim/util/ScreenAdjus.dart';
import 'package:ccat_sim/widgets/answerTile.dart';
import 'package:flutter/material.dart';

import '../classes/questionClass.dart';

class QuestionCard extends StatefulWidget {
  Question question;
  int questionNumber;
  SimClass simClass;
  QuestionCard(
      {super.key,
      required this.question,
      required this.questionNumber,
      required this.simClass});

  @override
  State<QuestionCard> createState() =>
      _QuestionCardState(question, questionNumber, simClass);
}

class _QuestionCardState extends State<QuestionCard> {
  Question question;
  int questionNumber;
  SimClass simClass;

  ScreenAdjusment screenAdjusment = ScreenAdjusment();

  _QuestionCardState(this.question, this.questionNumber, this.simClass);

  int selectedAnswer = -1;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(
          horizontal: screenAdjusment.QuestionCardHMargin(context),
          // vertical: screenAdjusment.QuestionCardVMargin(context),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.lightBlue),
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                width: double.infinity,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                        'Question ${questionNumber + 1}: Answer(${question.answer})'),
                    const SizedBox(height: 10),
                    Text(
                      question.question,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: question.answers.length,
                    itemBuilder: (BuildContext context, index) {
                      return CheckboxListTile(
                          title: Text(question.answers[index]),
                          value: (index == selectedAnswer) ? true : false,
                          onChanged: (value) {
                            setState(() {
                              selectedAnswer = index;
                              simClass.onAnswerQuestion(
                                  questionNumber, selectedAnswer);
                            });
                          });
                    })),
          ],
        ));
  }
}
