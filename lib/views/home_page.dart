import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20.0),
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('BMI Calculator', style: kTextStyleBold(24)),
            ],
          ),
        ),
      ),
    );
  }
}
