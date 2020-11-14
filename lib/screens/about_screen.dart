import 'package:aceac/screens/views/about_view.dart';
import 'package:flutter/material.dart';

///
/// Screen telling about this project.
///
class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AboutScreen();
  }
}

class _AboutScreen extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return AboutView();
  }
}
