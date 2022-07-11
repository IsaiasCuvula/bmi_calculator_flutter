import 'package:bmi_calculator_flutter/widgets/home_widgets/scale_ruler.dart';
import 'package:bmi_calculator_flutter/widgets/home_widgets/height_info.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import '../custom_card.dart';

class CenterCardWeight extends StatelessWidget {
  const CenterCardWeight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 190,
      isCenterCard: true,
      color: colorGrey,
      child: Center(
        child: Column(
          children: [
            Text('Height (in cm)', style: kTextStyleBold(20)),
            HeightInfo(),
            const ScaleRuler(),
          ],
        ),
      ),
    );
  }
}
