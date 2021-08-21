import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/route/route.dart' as route;

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() {
    return _ProductScreenState();
  }
}

class _ProductScreenState extends State<ProductScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold();
  }
}
