import 'package:flutter/material.dart';
import '../utils/constants.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({Key? key, required this.label, required this.child})
      : super(key: key);

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Text(
            label,
            style: kTextStyleBold(18),
          ),
        ),
        kVerticalSpace(18),
        child
      ],
    );
  }
}
