import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/controllers.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/pages/drivers/widgets/drivers_table.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class DriversPage extends StatelessWidget {
  const DriversPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top:
                          ResponsiveWidget.isSmallScreen(context) ? 56.0 : 6.0),
                  child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24.0,
                      weight: FontWeight.bold),
                )
              ],
            )),
        Expanded(
          child: ListView(
            children: [DriversTable()],
          ),
        )
      ],
    );
  }
}
