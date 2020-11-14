import 'package:aceac/common/colors.dart';
import 'package:aceac/screens/components/atoms/body.dart';
import 'package:aceac/screens/components/atoms/go_back.dart';
import 'package:aceac/screens/components/atoms/app_card.dart';
import 'package:aceac/screens/components/organisms/card_list.dart';
import 'package:flutter/material.dart';

class ExercisesView extends StatelessWidget {
  ExercisesView({
    Key key,
    @required this.onPressedSeatedExercises,
    @required this.onPressedStandupExercises,
  }) : super(key: key);

  final VoidCallback onPressedSeatedExercises;
  final VoidCallback onPressedStandupExercises;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Body(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          GoBack(onPressed: () => Navigator.pop(context)),
          SizedBox(
            height: 20,
          ),
          CardList(list: <Widget>[
            AppCard(
              title: 'Ginástica laboral para profissionais que trabalham sentados.',
              theme: AppCardTheme.dark,
              onPressed: onPressedSeatedExercises,
            ),
            SizedBox(
              height: 24,
            ),
            AppCard(
              title: 'Ginástica laboral para profissionais que trabalham em pé.',
              theme: AppCardTheme.dark,
              onPressed: onPressedStandupExercises,
            ),
            SizedBox(
              height: 24,
            ),
          ]),
        ],
      ),
    );
  }
}
