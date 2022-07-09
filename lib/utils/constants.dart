import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final colorGrey = Colors.grey.withOpacity(0.2);

TextStyle kTextStyleBold(double size) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
      fontSize: size,
    ),
  );
}

TextStyle kTextStyle(double size) {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Colors.black,
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
