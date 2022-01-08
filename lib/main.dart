import 'package:flutter/material.dart';
import 'package:salon_xe_may/pages/login_page.dart';

import 'theme/theme_custom.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeCustom _themeCustom = ThemeCustom();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quản lý salon xe',
      home: const LoginPage(),
      theme: _themeCustom.lightTheme(),
      darkTheme: _themeCustom.darkTheme(),
      themeMode: ThemeMode.light,
    );
  }
}
