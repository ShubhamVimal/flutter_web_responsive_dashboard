import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/controllers.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const VerticalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName: itemName)
            : menuController.onHover(itemName: 'not hovering');
      },
      child: Obx(() => Container(
            color: menuController.isHovering(itemName: itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                    visible: menuController.isHovering(itemName: itemName) ||
                        menuController.isActive(itemName: itemName),
                    child: Container(width: 3.0, height: 72.0, color: dark),
                    maintainSize: true,
                    maintainState: true,
                    maintainAnimation: true),
                Expanded(
                    child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: menuController.returnIconFor(itemName: itemName),
                    ),
                    !menuController.isActive(itemName: itemName)
                        ? Flexible(
                            child: CustomText(
                                text: itemName,
                                color: menuController.isHovering(
                                        itemName: itemName)
                                    ? dark
                                    : lightGrey))
                        : Flexible(
                            child: CustomText(
                                text: itemName,
                                color: dark,
                                size: 18.0,
                                weight: FontWeight.bold))
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
