import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/routing/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = overViewPageDisplayName.obs;
  var hoverItem = ''.obs;

  void changeActiveItemTo({required String itemName}) {
    activeItem.value = itemName;
  }

  void onHover({required String itemName}) {
    if (!isActive(itemName: itemName)) hoverItem.value = itemName;
  }

  bool isActive({required String itemName}) => activeItem.value == itemName;
  bool isHovering({required String itemName}) => hoverItem.value == itemName;

  Widget returnIconFor({required String itemName}) {
    switch (itemName) {
      case overViewPageDisplayName:
        return _customIcon(icon: Icons.trending_up, itemName: itemName);
      case driversPageDisplayName:
        return _customIcon(icon: Icons.drive_eta, itemName: itemName);
      case clientsPageDisplayName:
        return _customIcon(icon: Icons.people_alt_outlined, itemName: itemName);
      case authenticationPageDisplayName:
        return _customIcon(icon: Icons.exit_to_app, itemName: itemName);
      default:
        return _customIcon(icon: Icons.exit_to_app, itemName: itemName);
    }
  }

  Widget _customIcon({required IconData icon, required String itemName}) {
    if (isActive(itemName: itemName)) {
      return Icon(icon, size: 22.0, color: dark);
    }
    return Icon(icon, color: isHovering(itemName: itemName) ? dark : lightGrey);
  }
}
