import 'package:aceac/common/colors.dart';
import 'package:aceac/screens/components/atoms/body.dart';
import 'package:aceac/screens/components/atoms/logo.dart';
import 'package:aceac/screens/components/atoms/app_card.dart';
import 'package:aceac/screens/components/organisms/card_list.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({
    Key key,
    @required this.onPressedExercises,
    @required this.onPressedBenefits,
    @required this.onPressedAbout,
  }) : super(key: key);

  final VoidCallback onPressedExercises;
  final VoidCallback onPressedBenefits;
  final VoidCallback onPressedAbout;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Body(
        children: <Widget>[
          Row(
            children: <Widget>[
              Logo(),
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: Text('Autoconhecimento é autocuidado',
                  style:  Theme.of(context).textTheme.headline1,
                ),
              ),
            ],
          ),
          CardList(list: <Widget>[
            AppCard(
              title: 'Exercícios',
              theme: AppCardTheme.dark,
              onPressed: onPressedExercises,
            ),
            SizedBox(
              height: 24,
            ),
            AppCard(
              title: 'Benefícios e curiosidades',
              theme: AppCardTheme.dark,
              onPressed: onPressedBenefits,
            ),
            SizedBox(
              height: 24,
            ),
            AppCard(
              title: 'Sobre este projeto',
              theme: AppCardTheme.dark,
              onPressed: onPressedAbout,
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
