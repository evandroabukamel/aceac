import 'package:aceac/common/colors.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  AppCard({
    Key key,
    @required this.title,
    this.onPressed,
    this.description,
    this.buttonLabel,
    this.theme = AppCardTheme.dark,
    this.isNew = false,
    this.marginTop = 30,
  }) : super(key: key);

  final String title;
  final String description;
  final String buttonLabel;
  final double marginTop;
  final bool isNew;
  final AppCardTheme theme;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: theme == AppCardTheme.dark
            ? AppColors.cardBlackBg
            : AppColors.cardWhiteBg,
        child: InkWell(
          onTap: onPressed,
          splashColor: theme == AppCardTheme.dark
              ? AppColors.cardWhiteText
              : AppColors.cardBlackText,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                fit: FlexFit.tight,
                flex: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    if (isNew)
                      Chip(
                        backgroundColor: Color.fromRGBO(255, 229, 229, 1),
                        label: Text('Nova carta'),
                        labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontWeight: FontWeight.bold),
                      ),
                    Container(
                      margin: EdgeInsets.only(
                        top: isNew ? 10 : marginTop,
                        left: 24,
                        right: 24,
                      ),
                      child: Text(
                        title,
                        style: theme == AppCardTheme.dark
                            ? Theme.of(context).textTheme.headline1
                            : Theme.of(context).textTheme.headline2,
                      ),
                    ),
                    if (description != null)
                      Container(
                        margin: EdgeInsets.only(
                            top: 16, left: 24, right: 40, bottom: 30),
                        child: Text(
                          description,
                          style: theme == AppCardTheme.dark
                              ? Theme.of(context).textTheme.bodyText1
                              : Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                  ],
                ),
              ),
              if (null == description)
                SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
