import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class BMIDetail extends StatelessWidget {
  const BMIDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite * 0.5,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: colorBlue,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Center(
        child: Text(
          "Recalculate",
          style: kTextStyleBold(30),
        ),
      ),
    );
  }
}
