import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  var selectedGender = Gender.none.obs;
  var age = 26.obs;

  void increaseAge() => age++;
  void decreaseAge() {
    if (age.value > 0) age--;
  }

  void selectGender(Gender gender) {
    selectedGender.value == gender;
  }
}
