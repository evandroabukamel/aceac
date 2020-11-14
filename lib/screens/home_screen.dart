import 'package:aceac/screens/views/home_view.dart';
import 'package:flutter/material.dart';

///
/// Home screen where is the main menu.
///
class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return HomeView(
      onPressedExercises: () {
        Navigator.pushNamed(context, '/exercises');
      },
      onPressedBenefits: () {
        Navigator.pushNamed(context, '/benefits');
      },
      onPressedAbout: () {
        Navigator.pushNamed(context, '/about');
      },
    );
  }
}
