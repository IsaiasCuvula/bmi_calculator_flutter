import 'package:flutter/material.dart';
import '../utils/constants.dart';

class MaleFemaleIconLabel extends StatelessWidget {
  const MaleFemaleIconLabel({Key? key, required this.label, required this.icon})
      : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: label == 'Male' ? Colors.orange : Colors.pink,
          size: 100,
        ),
        Text(
          label,
          style: kTextStyleBold(18),
        ),
      ],
    );
  }
}
