import 'package:flutter/material.dart';

class product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<product> products = [
  product(
      id: 1,
      title: 'Office code',
      price: 245,
      size: 12,
      description: dummyText,
      image: 'assets/images/bag_1.png',
      color: Colors.blueAccent),
  product(
      id: 2,
      image: 'assets/images/bag_2.png',
      title: 'Belt bag',
      price: 25,
      description: dummyText,
      size: 8,
      color: Colors.redAccent),
  product(
      id: 3,
      image: 'assets/images/bag_3.png',
      title: 'Hang top',
      price: 345,
      description: dummyText,
      size: 10,
      color: Colors.yellowAccent),
  product(
      id: 4,
      image: 'assets/images/bag_4.png',
      title: 'Old Fashion',
      price: 345,
      description: dummyText,
      size: 11,
      color: Colors.grey),
  product(
      id: 5,
      image: 'assets/images/bag_5.png',
      title: 'Office code',
      price: 34,
      description: dummyText,
      size: 12,
      color: Colors.greenAccent),
  product(
      id: 6,
      image: 'assets/images/bag_6.png',
      title: 'Office code',
      price: 234,
      description: dummyText,
      size: 12,
      color: Colors.indigoAccent)
];
String dummyText =
    "Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores voluptas sed quae blanditiis ,";
