
import 'dart:ui';

import 'package:flutter/material.dart';

class fontStyle {
  static TextStyle gibsonbold ({double fontSize = 14, String fontfamily = "gibsonbold", Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontfamily,
      color: color,
    );
  }

  static TextStyle GibsonRegular ({double fontSize = 18, String fontfamily = "GibsonRegular", Color color = Colors.white}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontfamily,
      color: color,
    );
  }

  static TextStyle GibsonExtraboldRegular ({double fontSize = 18, String fontfamily = "GibsonExtraboldRegular", Color color = Colors.white}){
    return TextStyle(
      fontSize: fontSize,
      fontFamily: fontfamily,
      color: color,
    );
  }
}