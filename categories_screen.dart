import 'package:iti_summer_course_tutorial/route/route.dart';
import 'package:iti_summer_course_tutorial/screens/home/screen1.dart';
import 'package:iti_summer_course_tutorial/screens/home/screen3.dart';
import 'package:iti_summer_course_tutorial/screens/home/screen2.dart';
import 'package:iti_summer_course_tutorial/screens/home/screen4.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
  @override
  _CategoriesScreenState createState() {
    return _CategoriesScreenState();
  }
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return getDetailsWidget();
  }

  Widget getDetailsWidget() {
    return Scaffold(
        backgroundColor: Color(0xfffdfffd),
        appBar: new AppBar(
          elevation: 0,
          backgroundColor: Color(0xfffdfdfd),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
            size: 40,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  color: Color(0xff070707),
                  fontSize: 30,
                ),
              ),
              IconButton(
                icon: new Image.asset('assets/images/down.png'),
                tooltip: 'More',
                onPressed: () {},
                //alignment:,
              ),
            ],
          ),
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 2,
                      minimumSize: Size(40, 35),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.only(
                          left: 5, right: 5, top: 10, bottom: 10)),
                  child: Row(children: [
                    Image(
                      image: AssetImage('assets/images/menu2.png'),
                      height: 20,
                    ),
                    Text("Price Range"),
                  ]),
                  onPressed: () {},
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 2,
                      minimumSize: Size(40, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.only(
                          left: 5, right: 5, top: 10, bottom: 10)),
                  child: Row(children: [
                    Image(
                      image: AssetImage('assets/images/menu2.png'),
                      height: 20,
                    ),
                    Text("Tags"),
                  ]),
                  onPressed: () {},
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 2,
                      minimumSize: Size(40, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.only(
                          left: 5, right: 5, top: 10, bottom: 10)),
                  child: Row(children: [
                    Image(
                      image: AssetImage('assets/images/menu2.png'),
                      height: 20,
                    ),
                    Text("Style"),
                  ]),
                  onPressed: () {},
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.white,
                      elevation: 2,
                      minimumSize: Size(40, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.only(
                          left: 5, right: 5, top: 10, bottom: 10)),
                  child: Row(children: [
                    Image(
                      image: AssetImage('assets/images/menu2.png'),
                      height: 20,
                    ),
                    Text("Color"),
                  ]),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                            elevation: 3,
                            child: TextButton(
                                child: Stack(children: [
                                  Image(
                                    image:
                                        AssetImage('assets/images/chairs.jpg'),
                                    height: 220,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Column(children: [
                                        Text(
                                          'Chairs',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black87),
                                        ),
                                        Row(children: [
                                          Text(
                                            'From ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            ' \$ 490.-',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ])
                                      ])),
                                  Image(
                                    image: AssetImage('assets/images/plus.png'),
                                    height: 40,
                                  ),
                                ]),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Screen1()));
                                })),
                        Card(
                            elevation: 3,
                            child: TextButton(
                                child: Stack(children: [
                                  Image(
                                    image: AssetImage('assets/images/desk.jpg'),
                                    height: 220,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                  Positioned(
                                      bottom: 10,
                                      left: 10,
                                      child: Column(children: [
                                        Text(
                                          'Tables',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black87),
                                        ),
                                        Row(children: [
                                          Text(
                                            'From ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '\$ 350.-',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ])
                                      ])),
                                  Image(
                                    image: AssetImage('assets/images/plus.png'),
                                    height: 40,
                                  ),
                                ]),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Screen2()));
                                })),
                      ]),
                  Column(
                    children: [
                      Card(
                          elevation: 3,
                          //padding: EdgeInsets.only(bottom: 15),
                          child: TextButton(
                              child: Stack(children: [
                                Image(
                                  image: AssetImage('assets/images/comode.jpg'),
                                  height: 220,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 10,
                                  child: Column(children: [
                                    Text(
                                      'comodes',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black87),
                                    ),
                                    Row(children: [
                                      Text(
                                        'From ',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        ' \$ 600.-',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                  ]),
                                ),
                                Image(
                                  image: AssetImage('assets/images/plus.png'),
                                  height: 40,
                                ),
                              ]),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen3()));
                              })),
                      Card(
                          elevation: 3,
                          child: TextButton(
                              child: Stack(children: [
                                Image(
                                  image: AssetImage('assets/images/sofa.jpg'),
                                  height: 220,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                    bottom: 10,
                                    left: 10,
                                    child: Column(children: [
                                      Text(
                                        'sofas',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.black87),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'From ',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '\$  500.-',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ])),
                                Image(
                                  image: AssetImage('assets/images/plus.png'),
                                  height: 40,
                                ),
                              ]),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Screen4()));
                              }))
                    ],
                  )
                ],
              )),
          TextButton(
              child: Text("Scan my space"),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Colors.deepPurple.shade300,
                  elevation: 20,
                  minimumSize: Size(100, 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  padding: EdgeInsets.only(
                      left: 60, right: 60, top: 10, bottom: 10)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesScreen()),
                );
              })
        ]));
  }
}
