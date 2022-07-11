import 'package:bmi_calculator_flutter/controllers/bmi_controller.dart';
import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:bmi_calculator_flutter/views/bmi_details.dart';
import 'package:bmi_calculator_flutter/widgets/custom_card.dart';
import 'package:bmi_calculator_flutter/widgets/home_widgets/center_card_weight.dart';
import 'package:bmi_calculator_flutter/widgets/home_widgets/weight_info.dart';
import 'package:bmi_calculator_flutter/widgets/home_widgets/male_female_card.dart';
import 'package:bmi_calculator_flutter/widgets/home_widgets/nav_bottom.dart';
import 'package:bmi_calculator_flutter/widgets/home_widgets/height_info.dart';
import 'package:bmi_calculator_flutter/widgets/male_famale_icon_label.dart';
import 'package:bmi_calculator_flutter/widgets/plus_minus_button.dart';
import 'package:bmi_calculator_flutter/widgets/show_weights.dart';
import 'package:bmi_calculator_flutter/widgets/weight_age.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/home_widgets/age_card.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final BMIController _bmiController = Get.put(BMIController());

  void _calculateBMIShowResult(BuildContext context) {
    _bmiController.calculateBMI();
    final bmi = _bmiController.bmi;
    if (bmi != 0.0) {
      showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        context: context,
        builder: (ctx) {
          return BMIDetail();
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const NavBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorDarkBlue,
        onPressed: () => _calculateBMIShowResult(context),
        child: const Text('BMI'),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kVerticalSpace(44),
                  Text('BMI Calculator', style: kTextStyleBold(24)),
                  kVerticalSpace(24),
                  MaleFemaleCard(),
                  kVerticalSpace(24),
                  const CenterCardWeight(),
                  kVerticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WeightInfo(),
                      AgeCard(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
