import 'package:aceac/models/exercise.dart';
import 'package:aceac/screens/components/atoms/body.dart';
import 'package:aceac/screens/components/atoms/go_back.dart';
import 'package:aceac/screens/components/molecules/exercise_card.dart';
import 'package:aceac/screens/components/organisms/card_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TypedExercisesView extends StatelessWidget {
  TypedExercisesView({Key key,
    @required this.title,
    @required this.exercisePlan,
    @required this.exercises}) : super(key: key);

  final String title;
  final String exercisePlan;
  final List<Exercise> exercises;

  @override
  Widget build(BuildContext context) {
    List<Widget> exercisesList = new List<Widget>();
    for(var i = 0; i < exercises.length; i++){
      exercisesList.add(ExerciseCard(exercise: exercises[i]));
      exercisesList.add(SizedBox(height: 20));
    }

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Body(
        children: <Widget>[
          SizedBox(height: 10),
          GoBack(onPressed: () => Navigator.pop(context)),
          SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: exercisePlan,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          CardList(
            list: exercisesList,
          ),
        ],
      ),
    );
  }
}
