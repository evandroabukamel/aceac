import 'package:aceac/common/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoBack extends StatelessWidget {
  GoBack({@required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      child: RaisedButton(
        padding: EdgeInsets.all(0),
        color: AppColors.cardBlackBg,
        onPressed: () => Navigator.pop(context),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0),
        ),
        child: SvgPicture.asset('assets/images/arrow_left.svg',
            allowDrawingOutsideViewBox: true),
      ),
    );
  }
}
