import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.isCenterCard = false,
    this.height,
    required this.color,
  }) : super(key: key);

  final Widget child;
  final bool isCenterCard;
  final double? height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: isCenterCard ? width : width * 0.43,
      height: height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: color,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}
