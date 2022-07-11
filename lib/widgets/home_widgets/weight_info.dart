import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../show_weights.dart';

class WeightInfo extends StatelessWidget {
  const WeightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShowWeight(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (ctx, index) {
          final weight = (40 + index).toString();
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                weight,
                style: kTextStyle(16),
              ),
            ),
          );
        },
      ),
    );
  }
}
