import 'package:flutter/material.dart';
import 'package:iti_summer_course_tutorial/models/item_model.dart';

class Item extends StatelessWidget {
  final ItemModel itemModel;
  Item({required this.itemModel});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (this.itemModel.onCardClick != null) {
          this.itemModel.onCardClick!();
        }
      },
      child: Card(
        child: Container(
          width: 200,
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/chair.png"),
              SizedBox(
                height: 12.0,
              ),
              Text(
                "${this.itemModel.title}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.0,
              ),
              Text(
                "${this.itemModel.price}",
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
