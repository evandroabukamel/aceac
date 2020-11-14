import 'package:aceac/common/colors.dart';
import 'package:aceac/models/benefit.dart';
import 'package:expansion_card/expansion_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BenefitCard extends StatelessWidget {
  BenefitCard({Key key, this.benefit}) : super(key: key);

  final Benefit benefit;

  Widget build(BuildContext context) {
    return ExpansionCard(
      background: Card(
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: AppColors.cardBlackBg,
      ),
      backgroundColor: AppColors.cardBlackBg,
      borderRadius: 30.0,
      title: Text(
        benefit.title,
        style: Theme.of(context).textTheme.headline1,
      ),
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: benefit.description,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
