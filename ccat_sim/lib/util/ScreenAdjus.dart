import 'package:flutter/material.dart';

class ScreenAdjusment {
  double QuestionCardHMargin(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.width;

    if (currentWidth > 800) {
      return 250;
    }
    return 50;
  }

  double QuestionCardVMargin(BuildContext context) {
    double currentWidth = MediaQuery.of(context).size.height;

    if (currentWidth > 500) {
      return 10;
    }
    return 10;
  }
}
