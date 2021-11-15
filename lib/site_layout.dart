import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/helpers/responsiveness.dart';
import 'package:flutter_web_responsive_dashboard/widgets/large_screen.dart';
import 'package:flutter_web_responsive_dashboard/widgets/side_menu.dart';
import 'package:flutter_web_responsive_dashboard/widgets/small_screen.dart';
import 'package:flutter_web_responsive_dashboard/widgets/top_navigation_bar.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      extendBodyBehindAppBar: true,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: const ResponsiveWidget(
        largeScreen: LargeScreen(),
        mediumScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
