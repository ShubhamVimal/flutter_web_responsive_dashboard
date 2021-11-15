import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  static NavigationController instance = Get.find();

  final GlobalKey<NavigatorState> navigationKey = GlobalKey();

  Future<dynamic> navigateTo({required String routeName}) {
    return navigationKey.currentState!.pushNamed(routeName);
  }

  void goBack() => navigationKey.currentState!.pop();
}
