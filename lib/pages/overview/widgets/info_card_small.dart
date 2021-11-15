import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String title;
  final String value;
  final Color topColor;
  final bool isActive;
  final Function() onTap;

  const InfoCardSmall(
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
        padding: const EdgeInsets.all(24.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border:
                Border.all(color: isActive ? active : lightGrey, width: 0.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              text: title,
              size: 24.0,
              weight: FontWeight.w300,
              color: isActive ? active : lightGrey,
            ),
            CustomText(
              text: value,
              size: 24.0,
              weight: FontWeight.bold,
              color: isActive ? active : lightGrey,
            )
          ],
        ),
      ),
    ));
  }
}
