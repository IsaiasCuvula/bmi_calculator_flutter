import 'package:bmi_calculator_flutter/widgets/weight_age.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'custom_card.dart';

class ShowWeight extends StatelessWidget {
  const ShowWeight({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      color: colorGrey,
      height: 180,
      child: WeightAge(
        label: 'Weight(in kg)',
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(40),
            border: Border.all(
              width: 2,
              color: colorGrey,
            ),
          ),
          child: SizedBox(height: 40, child: child),
        ),
      ),
    );
  }
}
