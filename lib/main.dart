import 'package:contact/screen/home_screen.dart';
import 'package:contact/screen/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      routes: {
        Splash.routeName: (_) => Splash(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
    );
  }
}
