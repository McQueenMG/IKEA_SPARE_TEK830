// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class SparePart {
  String _id = "productID";
  String _name = "defaultName";
  String _description = "defaultDescription";
  String _imageUrl = "https://www.ikea.com/global/assets/logos/brand/ikea.svg";
  int _quantity = 0;
  String _location;

  SparePart(this._id, this._name, this._description, this._imageUrl, this._quantity, this._location);

  String get getId => _id;
  String get getName => _name;
  String get getDescription => _description;
  String get getImageUrl => _imageUrl;
  int get getQuantity => _quantity;
  String get getLocation => _location;

  void setQuantity(int quantity) {
    if(quantity < 0) {
      _quantity = 0;
    }
    else {
      _quantity = quantity;
    }
  }
  
}