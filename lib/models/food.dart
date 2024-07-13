// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Food {
  final String name;
  final String description;
  final String imgPath;
  final double price;
  final FoodCatagory category;
  List<AddOn> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imgPath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCatagory{

  burgers,
  salads,
  sides,
  deserts,
  drinks,
  
}


class AddOn {

  String name;
  double price;
  AddOn({
    required this.name,
    required this.price,
  });
}
