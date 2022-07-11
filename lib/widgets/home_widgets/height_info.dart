import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class HeightInfo extends StatelessWidget {
  const HeightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (ctx, index) {
          final weight = (100 + index).toString();
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
