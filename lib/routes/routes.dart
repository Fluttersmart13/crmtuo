import 'package:crmtuo/routes/router_constants.dart';
import 'package:crmtuo/view/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeSplash:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return null;
    }
  }
}
