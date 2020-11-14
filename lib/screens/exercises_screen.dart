import 'package:aceac/screens/views/exercises_view.dart';
import 'package:flutter/material.dart';

///
/// Exercises screen where the user can choose between seated or stand-up.
///
class ExercisesScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExercisesScreen();
  }
}

class _ExercisesScreen extends State<ExercisesScreen> {
  @override
  Widget build(BuildContext context) {
    return ExercisesView(
      onPressedSeatedExercises: () {
        Navigator.pushNamed(context, '/seated-exercises');
      },
      onPressedStandupExercises: () {
        Navigator.pushNamed(context, '/standup-exercises');
      },
    );
  }
}
