import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Medicine {
  final String name ;
  final double price;
  final Image image;

  Medicine({required this.name, required this.price , required this.image});
}

List<Medicine> medicines= [
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
  Medicine(name: "Cetamol", price: 10.0 , image: Image.asset("assets/images/cetamol.jpg")),
];