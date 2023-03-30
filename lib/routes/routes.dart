import 'package:crmtuo/routes/router_constants.dart';
import 'package:crmtuo/view/login_screen.dart';
import 'package:crmtuo/view/webView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeLogin:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return null;
    }
  }
}
