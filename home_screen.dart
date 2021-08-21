import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/route/route.dart' as route;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }

  Widget getHomeWidget() {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Decor &",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
            ),
            Text(
              "enjoy!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Image.asset(
                "assets/images/girl.png",
                height: 350.0,
                width: 400.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: ElevatedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, route.loginscreenpage),
                child: Text("Get started"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent[100],
                    padding: EdgeInsets.fromLTRB(50.0, 0, 50.0, 0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 60)),
            Text(
              "Already have an account? sign in",
              style: TextStyle(fontSize: 15.0),
            )
          ],
        ),
      ),
    ));
  }
}
