import 'package:bmi_calculator_flutter/utils/constants.dart';
import 'package:get/get.dart';

class BMIController extends GetxController {
  var selectedGender = Gender.none.obs;
  var age = 26.obs;
  var selectedHeight = 0.obs;
  var selectedWeight = 0.obs;

  void getSelectedHeightIndex(int index, int height) {
    selectedHeight.value = index;
  }

  void getSelectedWeightIndex(int index, int weight) {
    selectedWeight.value = index;
  }

  void increaseAge() => age++;
  void decreaseAge() {
    if (age.value > 0) age--;
  }

  void selectGender(Gender gender) {
    selectedGender.value == gender;
  }
}
