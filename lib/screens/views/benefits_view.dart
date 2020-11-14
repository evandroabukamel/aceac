import 'package:aceac/models/benefit.dart';
import 'package:aceac/screens/components/atoms/body.dart';
import 'package:aceac/screens/components/atoms/go_back.dart';
import 'package:aceac/screens/components/molecules/benefit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BenefitsView extends StatelessWidget {
  BenefitsView({Key key, @required this.about, @required this.benefits}) : super(key: key);

  final Benefit about;
  final List<Benefit> benefits;

  @override
  Widget build(BuildContext context) {
    List<Widget> benefitsList = new List<Widget>();
    for(var i = 0; i < benefits.length; i++){
      benefitsList.add(BenefitCard(benefit: benefits[i]));
      benefitsList.add(SizedBox(height: 20));
    }

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
          BenefitCard(benefit: about),
          SizedBox(
            height: 20,
          ),
          Text(
            'Efeitos da atividade física',
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(
            height: 20,
          ),
          ...benefitsList,
        ],
      ),
    );
  }
}
