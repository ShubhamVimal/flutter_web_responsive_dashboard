import 'package:flutter/material.dart';
import 'package:flutter_web_responsive_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_responsive_dashboard/pages/clients/clients.dart';
import 'package:flutter_web_responsive_dashboard/pages/drivers/driver.dart';
import 'package:flutter_web_responsive_dashboard/pages/overview/overview.dart';
import 'package:flutter_web_responsive_dashboard/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overViewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (ctx) => child);
}
