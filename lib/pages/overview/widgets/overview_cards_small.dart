import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/info_card_small.dart';

class OverViewCardSmallScreen extends StatelessWidget {
  const OverViewCardSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      height: 400.0,
      child: Column(
        children: [
          InfoCardSmall(
              title: 'Rides in progress',
              value: '7',
              onTap: () {},
              topColor: Colors.transparent,
              isActive: true),
          SizedBox(height: _width / 64),
          InfoCardSmall(
              title: 'Packages deliverd',
              value: '17',
              onTap: () {},
              topColor: Colors.transparent,
              isActive: false),
          SizedBox(height: _width / 64),
          InfoCardSmall(
              title: 'Cancelled delivery',
              value: '3',
              onTap: () {},
              topColor: Colors.transparent,
              isActive: false),
          SizedBox(height: _width / 64),
          InfoCardSmall(
              title: 'Scheduled deliveries',
              value: '3',
              onTap: () {},
              topColor: Colors.transparent,
              isActive: false)
        ],
      ),
    );
  }
}
