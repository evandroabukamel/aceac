import 'package:aceac/common/colors.dart';
import 'package:aceac/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ExerciseCard extends StatelessWidget {
  ExerciseCard({Key key, this.exercise}) : super(key: key);

  final Exercise exercise;

  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cardWhiteBg,
      padding: EdgeInsets.all(14),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        color: AppColors.cardWhiteBg,
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage(exercise.imagePath),
              alignment: Alignment.topCenter,
            ),
            SizedBox(height: 10),
            Text(exercise.description,
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}
