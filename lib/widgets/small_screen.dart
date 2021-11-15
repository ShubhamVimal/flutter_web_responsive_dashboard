import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/helpers/local_navigator.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: localNavigator(),
    );
  }
}
