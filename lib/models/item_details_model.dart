import 'package:flutter/material.dart';

class ItemDetailsModel {
  final String name;
  final String percentage;
  final Color color; // Optional, if you want to associate a specific color with each item.

  const ItemDetailsModel({required this.name, required this.percentage, required this.color});
}
