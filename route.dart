import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/screens/home/home_screen.dart';
import 'package:iti_summer_course_tutorial/screens/home/login_screen.dart';
import 'package:iti_summer_course_tutorial/screens/home/categories_screen.dart';
import 'package:iti_summer_course_tutorial/screens/home/product_screen.dart';

//route names
const String homescreenpage = 'home';
const String loginscreenpage = 'login';
const String categoriesscreenpage = 'categories';
const String productscreenpage = 'product';

//control our page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homescreenpage:
      return MaterialPageRoute(builder: (context) => HomeScreen());
    case loginscreenpage:
      return MaterialPageRoute(builder: (context) => loginScreen());
    case categoriesscreenpage:
      return MaterialPageRoute(builder: (context) => CategoriesScreen());
    case productscreenpage:
      return MaterialPageRoute(builder: (context) => ProductScreen());
    default:
      throw ("this route name does not exist");
  }
}
