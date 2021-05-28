import 'package:fitness_app/pages/login_page.dart';
import 'package:fitness_app/pages/welcome_page.dart';
import 'package:fitness_app/values/routes.dart';
import 'package:flutter/material.dart';

abstract class Pages {
  static const String initialPage = Routes.welcome;

  static final Map<String, Widget Function(BuildContext)> routes = {
    Routes.login: (_) => LoginPage(),
    Routes.welcome: (_) => WelcomePage(),
  };
}
