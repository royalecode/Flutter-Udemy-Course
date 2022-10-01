import 'package:flutter/material.dart';

import 'material_color_generator.dart';

ThemeData getThemeData(BuildContext context) {
  return ThemeData(
    primarySwatch: generateMaterialColor(
      const Color(0xff00c853),
    ),
    colorScheme: const ColorScheme.light(
      primary: Colors.blueAccent,
    ),
    hintColor: Colors.black,
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Colors.black12,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: Colors.amber,
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(
        Colors.pinkAccent,
      ),
      checkColor: MaterialStateProperty.all(
        Colors.white,
      ),
      overlayColor: MaterialStateProperty.all(
        Colors.blueGrey,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    radioTheme: RadioThemeData(
      fillColor: MaterialStateProperty.all(
        Colors.blueAccent,
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor:  MaterialStateProperty.all(
        Colors.amber,
      ),
      trackColor:  MaterialStateProperty.all(
        Colors.amber,
      ),
    ),
    sliderTheme: SliderThemeData(
      trackHeight: 8,
      activeTrackColor: Colors.pinkAccent,
      thumbColor: Colors.pink,
      overlayColor: Colors.pink.withOpacity(0.1),
      valueIndicatorColor: Colors.redAccent,
      inactiveTrackColor: Colors.pinkAccent.withOpacity(0.2),
      inactiveTickMarkColor: Colors.white54,
      thumbShape: const RoundSliderThumbShape(
        enabledThumbRadius: 10,
      ),
    ),
  );
}
