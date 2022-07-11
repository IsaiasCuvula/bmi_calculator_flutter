import 'package:bmi_calculator_flutter/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart';
import '../custom_card.dart';
import '../plus_minus_button.dart';
import '../weight_age.dart';

class AgeCard extends StatelessWidget {
  AgeCard({Key? key}) : super(key: key);

  final BMIController _bmiController = Get.find<BMIController>();

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 180,
      color: colorGrey,
      child: WeightAge(
        label: 'Age',
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  _bmiController.decreaseAge();
                },
                child: const PlusMinusButton(icon: Icons.remove_sharp)),
            Obx(() {
              final age = _bmiController.age.value;
              return Text('$age', style: kTextStyleBold(40));
            }),
            InkWell(
              onTap: () {
                _bmiController.increaseAge();
              },
              child: const PlusMinusButton(icon: Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
