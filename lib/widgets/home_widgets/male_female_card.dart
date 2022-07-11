import 'package:bmi_calculator_flutter/controllers/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart';
import '../custom_card.dart';
import '../male_famale_icon_label.dart';

class MaleFemaleCard extends StatelessWidget {
  MaleFemaleCard({Key? key}) : super(key: key);

  final BMIController _bmiController = Get.find<BMIController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final selectedGender = _bmiController.selectedGender.value;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              _bmiController.selectedGender(Gender.male);
            },
            child: CustomCard(
              color: selectedGender == Gender.male ? colorDarkBlue : colorGrey,
              child: const MaleFemaleIconLabel(
                label: 'Male',
                icon: Icons.male,
              ),
            ),
          ),
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              _bmiController.selectedGender(Gender.female);
            },
            child: CustomCard(
              color:
                  selectedGender == Gender.female ? colorDarkBlue : colorGrey,
              child: const MaleFemaleIconLabel(
                label: 'Female',
                icon: Icons.female,
              ),
            ),
          ),
        ],
      );
    });
  }
}
