import 'package:daftpunk/src/screens/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';
import 'src/core/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: SplashScreen(),
    );
  }
}
