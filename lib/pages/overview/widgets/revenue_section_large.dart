import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';

class RevenueSectionLargeScreen extends StatelessWidget {
  const RevenueSectionLargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      margin: const EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 6),
                color: lightGrey.withOpacity(.1),
                blurRadius: 12.0)
          ],
          border: Border.all(color: lightGrey, width: .5)),
      child: Row(
        children: [
          Expanded(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                CustomText(
                    text: 'Revenue Chart',
                    size: 20.0,
                    weight: FontWeight.bold,
                    color: light),
                Container(
                    width: 600,
                    height: 200,
                    child: SimpleBarChart.withSampleData())
              ])),
          Container(width: 1.0, height: 120.0, color: lightGrey),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: const [
                  RevenueInfo(title: 'Today\'s Revenue', amount: '23'),
                  RevenueInfo(title: 'Last 7 days', amount: '150'),
                ],
              ),
              const SizedBox(height: 30.0),
              Row(
                children: const [
                  RevenueInfo(title: 'Last 30 days', amount: '1,203'),
                  RevenueInfo(title: 'Last 12 months', amount: '3,234'),
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }
}
