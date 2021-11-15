import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/widgets/hori_menu_items.dart';
import 'package:flutter_web_responsive_dashboard/widgets/vert_menu_items.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    }
    return HorizontalMenuItem(itemName: itemName, onTap: onTap);
  }
}
