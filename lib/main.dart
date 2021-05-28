import 'package:fitness_app/values/pages.dart';
import 'package:fitness_app/values/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Katya's Fitness App",
      theme: appTheme,
      routes: Pages.routes,
      initialRoute: Pages.initialPage,
    );
  }
}
