import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/route/route.dart' as route;
import 'package:flutter/src/widgets/framework.dart';
import 'package:iti_summer_course_tutorial/screens/home/categories_screen.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() {
    return _loginScreenState();
  }
}

class _loginScreenState extends State<loginScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }
}

Widget getHomeWidget() {
  return Scaffold(
      body: Padding(
          padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/chair.png",
                  height: 150.0,
                  width: 150.0,
                ),
                Text(
                  "Find your",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                Text(
                  "unique piece!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                Text("join us,"),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(gapPadding: 2.0),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "E-email",
                  ),
                ),
                Padding(padding: EdgeInsets.all(10.0)),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(gapPadding: 2.0),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Password",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      // MaterialPageRoute(
                      //   builder: (context) => CategoriesScreen()));
                    },
                    child: Text("Create Account"),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueAccent[100],
                        padding: EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0))),
                  ),
                ),
                Text("sign up with"),
                Image.asset(
                  "assets/images/facebook.png",
                  height: 100,
                  width: 100,
                ),
                Padding(padding: EdgeInsets.only(bottom: 30.0)),
                Text(
                  "Already have an account? sign in",
                  style: TextStyle(fontSize: 15.0),
                )
              ],
            ),
          )));
}
