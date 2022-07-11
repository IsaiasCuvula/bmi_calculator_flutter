import 'package:bmi_calculator_flutter/controllers/bmi_controller.dart';
import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMIDetail extends StatelessWidget {
  BMIDetail({Key? key}) : super(key: key);
  final BMIController _bmiController = Get.find<BMIController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite * 0.5,
      decoration: const BoxDecoration(
        color: colorBlue,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          height: Get.height,
          padding: const EdgeInsets.all(20),
          child: Obx(() {
            final String bmi = _bmiController.bmi.toStringAsFixed(1);
            final result = _bmiController.result.value;
            final description = _bmiController.description.value;
            return Column(
              children: [
                Text(
                  "Your BMI is",
                  style: kTextStyleWhite(24),
                ),
                kVerticalSpace(25),
                Text(
                  "$bmi kg/m2",
                  style: kTextStyleBoldWhite(30),
                ),
                Text(
                  "($result)",
                  style: kTextStyleWhite(24),
                ),
                kVerticalSpace(25),
                Text(
                  description,
                  style: kTextStyleWhite(18),
                ),
                kVerticalSpace(25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.bookmark_border_rounded,
                        color: Colors.white, size: 26),
                    const SizedBox(width: 10),
                    const Icon(Icons.share, color: Colors.white, size: 26),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        _bmiController.clearInfo();
                        Get.back();
                      },
                      child: Container(
                        height: 40,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: colorDarkBlue,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Text(
                          'Close',
                          style: kTextStyleWhite(18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
