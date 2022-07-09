import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:bmi_calculator_flutter/widgets/custom_card.dart';
import 'package:bmi_calculator_flutter/widgets/male_famale.dart';
import 'package:bmi_calculator_flutter/widgets/plus_minus_button.dart';
import 'package:bmi_calculator_flutter/widgets/show_weights.dart';
import 'package:bmi_calculator_flutter/widgets/weight_age.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  kVerticalSpace(44),
                  Text('BMI Calculator', style: kTextStyleBold(24)),
                  kVerticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CustomCard(
                        child: MaleFemale(label: 'Male', icon: Icons.male),
                      ),
                      CustomCard(
                        child: MaleFemale(label: 'Female', icon: Icons.female),
                      ),
                    ],
                  ),
                  kVerticalSpace(24),
                  CustomCard(
                    height: 190,
                    isCenterCard: true,
                    child: Center(
                      child: Column(
                        children: [
                          Text('Height (in cm)', style: kTextStyleBold(20)),
                          SizedBox(
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
                          ),
                          SizedBox(
                            height: 60,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 100,
                              itemBuilder: (ctx, index) {
                                return Center(
                                  child: Container(
                                    height: 60,
                                    width: 1,
                                    padding: const EdgeInsets.all(8.0),
                                    margin: const EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2.5,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  kVerticalSpace(24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ShowWeight(
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
                      ),
                      CustomCard(
                        height: 180,
                        child: WeightAge(
                          label: 'Age',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const PlusMinusButton(icon: Icons.remove_sharp),
                              Text('26', style: kTextStyleBold(40)),
                              const PlusMinusButton(icon: Icons.add),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomPaint(
              size: Size(width, 100),
              painter: CurvedNavBottomPainter(),
            )
          ],
        ),
      ),
    );
  }
}

class CurvedNavBottomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.7,
      size.width * 0.5,
      size.height * 0.8,
    );
    path.quadraticBezierTo(
      size.width * 0.75,
      size.height * 0.9,
      size.width * 1.0,
      size.height * 0.8,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
