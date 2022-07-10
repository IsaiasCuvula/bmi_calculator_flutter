import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum Gender { male, female, none }

final colorGrey = Colors.grey.withOpacity(0.2);
const colorBlue = Color(0xFF2565CC);
const colorDarkBlue = Color(0xFF0A1028);

TextStyle kTextStyleBold(double size) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: colorDarkBlue,
      fontWeight: FontWeight.w700,
      fontSize: size,
    ),
  );
}

TextStyle kTextStyle(double size) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: colorDarkBlue,
      fontWeight: FontWeight.w400,
      fontSize: size,
    ),
  );
}

TextStyle kTextStyleBoldWhite(double size) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w700,
      fontSize: size,
    ),
  );
}

TextStyle kTextStyleWhite(double size) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: size,
    ),
  );
}

Widget kVerticalSpace(double height) {
  return SizedBox(
    height: height,
  );
}
