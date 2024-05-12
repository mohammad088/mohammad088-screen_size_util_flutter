import 'package:flutter/material.dart';

class Category {
  final String title;
  final Image icon;
  final bool isSelected;

  Category({required this.isSelected, required this.title, required this.icon});
}

List<Category> categories = [
  Category(
      title: "kidney Medicine",
      icon: Image.asset("assets/images/img_1.png"),
      isSelected: false),
  Category(
      title: "Band aid",
      icon: Image.asset("assets/images/img_2.png"),
      isSelected: false),
  Category(
      title: "Medicine pills",
      icon: Image.asset("assets/images/img.png"),
      isSelected: false)
];
