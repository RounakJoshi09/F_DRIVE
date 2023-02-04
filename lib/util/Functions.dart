import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Functions {
  static AssetImage getAssetImage({String? imageName}) {
    return AssetImage('images/$imageName');
  }

  static TextStyle textStyle(
      double fontSize, Color color, FontWeight fontWeight) {
    return GoogleFonts.montserrat(
        fontSize: fontSize, color: color, fontWeight: fontWeight);
  }
}
