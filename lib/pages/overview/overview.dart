import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/controllers.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/available_drivers.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/overview_cards_large.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/overview_cards_medium.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/overview_cards_small.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/revenue_section_large.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/widgets/revenue_section_small.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

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
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                const OverViewCardMediumScreen()
              else
                const OverViewCardsLargesScreen()
            else
              const OverViewCardSmallScreen(),
            if (!ResponsiveWidget.isSmallScreen(context))
              const RevenueSectionLargeScreen()
            else
              const RevenueSectionSmallScreen(),
            const AvailableDrivers()
          ],
        ))
      ],
    );
  }
}
