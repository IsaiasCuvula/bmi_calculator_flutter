import 'package:flutter/material.dart';
import '../../controllers/bmi_controller.dart';
import '../../utils/constants.dart';
import '../show_weights.dart';
import 'package:get/get.dart';

class WeightInfo extends StatelessWidget {
  WeightInfo({Key? key}) : super(key: key);

  final BMIController _bmiController = Get.find<BMIController>();

  @override
  Widget build(BuildContext context) {
    return ShowWeight(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (ctx, index) {
          final weight = 40 + index;
          return Center(
            child: InkWell(
              onTap: () {
                _bmiController.getSelectedWeightIndex(index, weight);
              },
              child: Obx(() {
                final selectedIndex = _bmiController.selectedWeightIndex.value;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    weight.toString(),
                    style: selectedIndex == index
                        ? kTextStyleBold(24)
                        : kTextStyle(16),
                  ),
                );
              }),
            ),
          );
        },
      ),
    );
  }
}
