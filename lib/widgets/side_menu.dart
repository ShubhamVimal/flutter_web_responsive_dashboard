import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/controllers.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_responsive_dashboard/routing/routes.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_responsive_dashboard/widgets/side_menu_items.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(mainAxisSize: MainAxisSize.min, children: [
              const SizedBox(height: 40.0),
              Row(
                children: [
                  SizedBox(width: _width / 48.0),
                  Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Icon(Icons.dashboard, color: dark)),
                  Flexible(
                      child: CustomText(
                          text: 'Dash',
                          size: 20.0,
                          weight: FontWeight.bold,
                          color: active))
                ],
              ),
              const SizedBox(height: 30.0),
              Divider(color: lightGrey.withOpacity(.1)),
            ]),
          const SizedBox(height: 30.0),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map((item) => SideMenuItem(
                    itemName: item.name,
                    onTap: () {
                      if (item.route == authenticationPageRoute) {
                        //  go to authentication page
                        menuController.changeActiveItemTo(
                            itemName: overViewPageDisplayName);
                        Get.offAllNamed(authenticationPageRoute);
                      }
                      if (!menuController.isActive(itemName: item.name)) {
                        menuController.changeActiveItemTo(itemName: item.name);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(routeName: item.route);
                      }
                    }))
                .toList(),
          )
        ],
      ),
    );
  }
}
