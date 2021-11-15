import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/widgets/custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.dashboard,
                color: dark,
              ),
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
      title: Row(children: [
        Visibility(
            child: CustomText(
          text: 'Dash',
          color: lightGrey,
          size: 20.0,
          weight: FontWeight.bold,
        )),

        // use either for space,  Expanded(child: Container()),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: dark.withOpacity(.7),
            )),
        Stack(children: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: dark.withOpacity(.7),
              )),
          Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12.0,
                height: 12,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: active,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(color: light, width: 2.0)),
              ))
        ]),
        Container(width: 1.0, height: 22.0, color: lightGrey),
        const SizedBox(width: 24.0),
        CustomText(text: 'Steve Austin', color: lightGrey),
        const SizedBox(width: 16.0),
        Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30.0)),
            child: Container(
                padding: const EdgeInsets.all(2.0),
                margin: const EdgeInsets.all(2.0),
                child: CircleAvatar(
                    backgroundColor: light,
                    child: Icon(
                      Icons.person_outline,
                      color: dark,
                    ))))
      ]),
      iconTheme: IconThemeData(color: dark),
    );
