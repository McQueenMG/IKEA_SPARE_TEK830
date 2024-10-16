// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class SparePart {
  String _id = "productID";
  String _name = "defaultName";
  String _description = "defaultDescription";
  String _imageUrl = "https://www.ikea.com/global/assets/logos/brand/ikea.svg";
  ValueNotifier<int> _quantity = ValueNotifier<int>(0);

  SparePart(this._id, this._name, this._description, this._imageUrl, this._quantity);

  String get getId => _id;
  String get getName => _name;
  String get getDescription => _description;
  String get getImageUrl => _imageUrl;
  ValueNotifier<int> get getQuantity => _quantity;

  void setQuantity(ValueNotifier<int> quantity) {
    _quantity = quantity;
  }
}