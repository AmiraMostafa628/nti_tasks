import 'package:flutter/material.dart';

class BasketModel{
  String image;
  Color imageBackgroundColor;
  String title;
  String subTitle;
  String price;
  BasketModel({
    required this.image,
    required this.imageBackgroundColor,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}