import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/route/route.dart' as route;
import 'package:iti_summer_course_tutorial/screens/home/categories_screen.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return getHomeWidget();
  }
}

Widget getHomeWidget() {
  return Scaffold(
      body: CustomScrollView(
    slivers: <Widget>[
      SliverAppBar(
        backgroundColor: Colors.blueAccent[100],
        iconTheme: IconThemeData(color: Colors.black),
        expandedHeight: 300,
        floating: true,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          background: Image(
            image: AssetImage("assets/images/sofa.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SliverFillRemaining(
        child: _buildcontent(),
      )
    ],
  ));
}

_buildcontent() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Comfy Sofa",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 40,
            ),
          ),
          Text(
            "Sofas",
            style: TextStyle(color: Colors.grey[700], fontSize: 20),
          ),
          Text(
            ' \$ 500.-',
            style: TextStyle(
                fontSize: 40,
                color: Colors.blueAccent[100],
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "'The Mia sofa understands your subtle need for beautiful home decor. Upholstered in highly functional yet beautiful linen fabric, this stunning piece can be placed almost anywhere in your home. It features sturdy wooden frame and comfortable pocket coil construction for decadent comfort. Available in many colors that will complement your home\'s specific decor.';",
              style: TextStyle(color: Colors.grey[700]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                Text(
                  "Quantity",
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.grey[700],
                      ),
                      Text(
                        "01",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Icon(
                        Icons.add_box_outlined,
                        color: Colors.grey[700],
                      )
                    ],
                  ),
                )
              ]),
              Column(
                children: [
                  Text(
                    "colors",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        _AvailableColor(
                          color: Colors.brown,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _AvailableColor(
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _AvailableColor(
                          color: Colors.white70,
                          isSelected: true,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        _AvailableColor(
                          color: Colors.lightGreen,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}

class _AvailableColor extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const _AvailableColor({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      padding: EdgeInsets.all(isSelected ? 1.5 : 0),
      decoration: isSelected
          ? BoxDecoration(
              border: Border.all(),
              shape: BoxShape.circle,
            )
          : BoxDecoration(),
      child: Container(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
