import 'package:crmtuo/bloc/logics/login_bloc.dart';
import 'package:crmtuo/routes/router_constants.dart';
import 'package:crmtuo/view/login_screen.dart';
import 'package:crmtuo/view/webView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeLogin:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                create: (context) => LoginBloc(), child: LoginScreen()));
      case routeHome:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return null;
    }
  }
}
