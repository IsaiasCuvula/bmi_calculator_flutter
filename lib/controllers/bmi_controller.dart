import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  var selectedGender = Gender.none.obs;

  void selectGender(Gender gender) {
    selectedGender.value == gender;
  }
}
