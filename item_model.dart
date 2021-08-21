import 'package:flutter/material.dart';

class ItemModel {
  String title, price, image;
  VoidCallback? onCardClick;
  ItemModel({
    required this.title,
    required this.price,
    required this.image,
    this.onCardClick,
  });
}
