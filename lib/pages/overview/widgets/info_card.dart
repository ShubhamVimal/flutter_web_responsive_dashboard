import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function() onTap;

  const InfoCard(
      {Key? key,
      required this.title,
      required this.value,
      required this.topColor,
      required this.isActive,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: onTap,
      child: Container(
        height: 136.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 6),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 12.0)
            ],
            borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          children: [
            Row(children: [
              Expanded(child: Container(height: 5.0, color: topColor))
            ]),
            Expanded(child: Container()),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: !isActive ? lightGrey : active)),
                  TextSpan(
                      text: value,
                      style: TextStyle(
                          fontSize: 40.0, color: !isActive ? dark : active))
                ])),
            Expanded(child: Container()),
          ],
        ),
      ),
    ));
  }
}
