import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(
        image: AssetImage('assets/images/logo.png'),
        height: 140,
      ),
      margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
      height: 50,
    );
  }
}
