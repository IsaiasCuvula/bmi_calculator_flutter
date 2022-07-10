import 'package:bmi_calculator_flutter/controllers/bmi_controller.dart';
import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:bmi_calculator_flutter/views/bmi_details.dart';
import 'package:bmi_calculator_flutter/widgets/custom_card.dart';
import 'package:bmi_calculator_flutter/widgets/male_famale.dart';
import 'package:bmi_calculator_flutter/widgets/plus_minus_button.dart';
import 'package:bmi_calculator_flutter/widgets/show_weights.dart';
import 'package:bmi_calculator_flutter/widgets/weight_age.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final BMIController _bmiController = Get.put(BMIController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: _navBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorDarkBlue,
        child: const Text('BMI'),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            ),
            context: context,
            builder: (ctx) {
              return const BMIDetail();
            },
          );
        },
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
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
                  Obx(() {
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
                            color: selectedGender == Gender.male
                                ? colorDarkBlue
                                : colorGrey,
                            child: const MaleFemale(
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
                            color: selectedGender == Gender.female
                                ? colorDarkBlue
                                : colorGrey,
                            child: const MaleFemale(
                              label: 'Female',
                              icon: Icons.female,
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                  kVerticalSpace(24),
                  CustomCard(
                    height: 190,
                    isCenterCard: true,
                    color: colorGrey,
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
                        color: colorGrey,
                        child: WeightAge(
                          label: 'Age',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  onTap: () {
                                    _bmiController.decreaseAge();
                                  },
                                  child: const PlusMinusButton(
                                      icon: Icons.remove_sharp)),
                              Obx(() {
                                final age = _bmiController.age.value;
                                return Text('$age', style: kTextStyleBold(40));
                              }),
                              InkWell(
                                onTap: () {
                                  _bmiController.increaseAge();
                                },
                                child: const PlusMinusButton(icon: Icons.add),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _navBottom() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      child: BottomAppBar(
        color: colorBlue,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.show_chart,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            const SizedBox(width: 48.0),
            IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
