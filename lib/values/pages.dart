import 'package:fitness_app/pages/login_screen.dart';
import 'package:fitness_app/values/routes.dart';
import 'package:flutter/material.dart';

abstract class Pages {
  static const String initialPage = Routes.login;

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.login: (_) => LoginPage(),
  };
}
