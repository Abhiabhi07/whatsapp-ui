import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/login_screen.dart';
import 'screens/profile_screen/profile_screen.dart';
import 'screens/verify_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.brown[400], ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: TextTheme(
              titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              titleMedium: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
              titleSmall: TextStyle(
                  color: Colors.brown[400], fontWeight: FontWeight.w400)),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.brown[400],
          )),
      home: HomeScreen(),
    );
  }
}
