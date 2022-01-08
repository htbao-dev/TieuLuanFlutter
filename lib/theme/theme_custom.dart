import 'package:flutter/material.dart';

class ThemeCustom {
  final _textFieldContentPadding =
      const EdgeInsets.only(left: 20, top: 15, bottom: 15);
  final _buttonContentPadding = const EdgeInsets.all(15);
  final _borderRadius = const BorderRadius.all(Radius.circular(67));

  ThemeData lightTheme() {
    BorderSide enabledBorderSide =
        const BorderSide(width: 0, color: Colors.white);
    BorderSide focusedBorderSide =
        const BorderSide(width: 2, color: Colors.blue);
    BorderSide errorBorderSide =
        const BorderSide(width: 2, color: Colors.redAccent);

    return ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: _textFieldContentPadding,
          enabledBorder: OutlineInputBorder(
              borderRadius: _borderRadius, borderSide: enabledBorderSide),
          focusedBorder: OutlineInputBorder(
            borderRadius: _borderRadius,
            borderSide: focusedBorderSide,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: _borderRadius,
            borderSide: errorBorderSide,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: _borderRadius,
            borderSide: errorBorderSide,
          ),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.black),
          headline1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(
                    _buttonContentPadding),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF4361ee)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: _borderRadius,
                )))),
        appBarTheme: const AppBarTheme(
            // backgroundColor: Colors.yellow
            ),
        colorScheme: const ColorScheme(
            primary: Color(0xFF4361ee),
            primaryVariant: Colors.yellow,
            // Color(0xff3700b3),
            secondary: Color(0xff03dac6),
            secondaryVariant: Color(0xff018786),
            surface: Colors.white,
            background: Colors.white,
            error: Color(0xffb00020),
            onPrimary: Colors.white,
            onSecondary: Colors.black,
            onSurface: Colors.black,
            onBackground: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light)
        // colorScheme:
        );
  }

  ThemeData darkTheme() {
    return ThemeData();
  }
}
