import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/constants/style.dart';
import 'package:flutter_web_responsive_dashboard/controllers/menu_controller.dart';
import 'package:flutter_web_responsive_dashboard/controllers/navigation_controller.dart';
import 'package:flutter_web_responsive_dashboard/pages/404/error.dart';
import 'package:flutter_web_responsive_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_responsive_dashboard/routing/routes.dart';
import 'package:flutter_web_responsive_dashboard/site_layout.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<MenuController>(MenuController());
  Get.put<NavigationController>(NavigationController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: authenticationPageRoute,
      unknownRoute: GetPage(
          name: '/not-found',
          page: () => const PageNotFound(),
          transition: Transition.fadeIn),
      getPages: [
        GetPage(name: rootRoute, page: () => SiteLayout()),
        GetPage(
            name: authenticationPageRoute,
            page: () => const AuthenticationPage())
      ],
      title: 'Dash',
      theme: ThemeData(
          scaffoldBackgroundColor: light,
          textTheme: GoogleFonts.muktaTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.black),
          pageTransitionsTheme: const PageTransitionsTheme(builders: {
            TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder()
          }),
          primaryColor: Colors.blue),
    );
  }
}
