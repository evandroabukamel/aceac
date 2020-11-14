import 'package:aceac/common/colors.dart';
import 'package:aceac/screens/about_screen.dart';
import 'package:aceac/screens/benefits_screen.dart';
import 'package:aceac/screens/exercises_screen.dart';
import 'package:aceac/screens/home_screen.dart';
import 'package:aceac/screens/seated_exercises_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Autoconhecimento é autocuidado',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        accentColor: Colors.tealAccent,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Inter',
        textTheme: TextTheme(
          // Large text white
          headline1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 20,
          ),
          // Large text black
          headline2: TextStyle(
            color: AppColors.cardBlackText,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            fontSize: 20,
          ),
          // Small text white
          bodyText1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 16,
          ),
          // Small text black
          bodyText2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 16,
          ),
        ),
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/exercises': (context) => ExercisesScreen(),
        '/seated-exercises': (context) => SeatedExercisesScreen(),
        '/benefits': (context) => BenefitsScreen(),
        '/about': (context) => AboutScreen(),
      },
    );
  }
}
