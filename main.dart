import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/route/route.dart';
import 'package:iti_summer_course_tutorial/screens/home/categories_screen.dart';
import 'package:iti_summer_course_tutorial/screens/home/login_screen.dart';
import 'route/route.dart' as route;

void main() {
  runApp(getMyAppRootWidget());
}

Widget getMyAppRootWidget() {
  Widget materialAppWidget = new MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    onGenerateRoute: route.controller,
    initialRoute: route.homescreenpage,
    debugShowCheckedModeBanner: false,
  );
  return materialAppWidget;
}
