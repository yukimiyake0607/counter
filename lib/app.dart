import 'package:counter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.blueGrey,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      // themeMode: ThemeMode.dark,
    );
  }
}
