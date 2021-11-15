import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  final String title;
  final String amount;
  const RevenueInfo({Key? key, required this.title, required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: '$title \n\n',
              style: TextStyle(color: lightGrey, fontSize: 16.0)),
          TextSpan(
              text: '\$ $amount',
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0))
        ]),
      ),
    );
  }
}
