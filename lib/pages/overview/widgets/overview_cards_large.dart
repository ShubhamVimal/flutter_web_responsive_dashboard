import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/info_card.dart';

class OverViewCardsLargesScreen extends StatelessWidget {
  const OverViewCardsLargesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        InfoCard(
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
            isActive: false,
            topColor: Colors.orange),
        SizedBox(width: _width / 64.0),
        InfoCard(
            title: 'Packages deliverd',
            value: '17',
            onTap: () {},
            isActive: false,
            topColor: Colors.lightGreen),
        SizedBox(width: _width / 64.0),
        InfoCard(
            title: 'Cancelled delivery',
            value: '3',
            onTap: () {},
            isActive: false,
            topColor: Colors.redAccent),
        SizedBox(width: _width / 64.0),
        InfoCard(
            title: 'Scheduled deliveries',
            value: '3',
            isActive: false,
            topColor: Colors.indigo,
            onTap: () {}),
      ],
    );
  }
}
