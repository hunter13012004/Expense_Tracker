import 'package:flutter/material.dart';

class ExpenseModel {
  String title;
  String price;
  IconData? customicon;
  String category;
  DateTime? currentdate;

  ExpenseModel(
      {required this.title,
      required this.price,
      required this.customicon,
      required this.category,
      this.currentdate});

  factory ExpenseModel.fromJson(Map<String, dynamic> map) {
    return ExpenseModel(
      title: map['title'] ?? 'No Strings Found',
      price: map['price'] ?? '',
      customicon: map['customicon'],
      category: map['category'] ?? '',
    );
  }
}
