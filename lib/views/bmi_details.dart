import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Your BMI is",
            style: kTextStyleWhite(24),
          ),
          kVerticalSpace(25),
          Text(
            "19.6 kg/m2",
            style: kTextStyleBoldWhite(30),
          ),
          Text(
            "(normal)",
            style: kTextStyleWhite(24),
          ),
          kVerticalSpace(25),
          Text(
            "A BMI of 18.5 - 24.9 indicates that you are at healthy weight for your height. "
            "By maintaining a healthy weight, "
            "you lower your risk of developing serious health problems.",
            style: kTextStyleWhite(18),
          ),
          kVerticalSpace(25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.bookmark_border_rounded,
                  color: Colors.white, size: 26),
              SizedBox(width: 10),
              Icon(Icons.share, color: Colors.white, size: 26),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () => Get.back(),
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
    );
  }
}
