import 'package:flutter/material.dart';

class CardList<ElementWidget extends Widget> extends StatelessWidget {
  CardList({
    @required this.list,
  });

  final List<ElementWidget> list;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: list,
      ),
    );
  }
}
