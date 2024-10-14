// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

/* 
  Collection of all the spare-parts and products.

  Example of how to access spare-parts:
    Parts partsInstance = Parts();
    partsInstance.getSpareParts();
 */

class Parts {
  static final Parts _this = Parts._privateConstructor();

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  SparePart _part1 = SparePart(
      "761310",
      "Foot",
      "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
      "https://cdn.fixpart.net/126375/f1107baf9c6811d82078c4131e5a3d5c.jpg",
      ValueNotifier<int>(23));

  SparePart _part2 = SparePart(
      "H191825",
      "Cap White",
      "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
      "https://cdn.fixpart.net/90861849/ea5b7744ba89682e54e5e21b9a799f61.jpg",
      ValueNotifier<int>(16)
      );

  SparePart _part3 = SparePart(
    "U232204",
    "Ventilation Uc White Gw",
    "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/91543346/8ec4876ee019f7053530cd1b3d38b3d4.jpg",
    ValueNotifier<int>(5)
  );

  SparePart _part4 = SparePart(
    "7350424",
    "Freezer drawer",
    "Ersätter: #754487 C00341247 481941849693 DRAWER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/5120664/28cfba20b9f25a9d8d2020b17779536b.jpg",
    ValueNotifier<int>(1)
  );

  SparePart _part5 = SparePart(
    "3091973",
    "Spring Thermostat",
    "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/44098/9ae8d67525cd434d33ee8750d93cb970.jpg",
    ValueNotifier<int>(1)
  );

  SparePart _part6 = SparePart(
    "G746691",
    "Dwb305, Cutlery Basket_cz E Gr H P Ro Sk",
    "Ersätter: #F468189 DWB303 484000001070 CUTLERY BASKET WPRO UNIVERSAL.\nErsätter: #G746692 C00380125 484000008561 DWB304, 2 IN 1 UNIVERSAL DISHWASHER CUTLERY BASKET 20X22X16,4CM\nDenna artikel är kompatibel / passar för modellen: DWF902W / IKEA",
    "https://cdn.fixpart.net/90161177/a0cdcb58e4e6dbba4fb783108eb0e6da.jpg",
    ValueNotifier<int>(1)
  );

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  Product _product1 = Product(
    "10568068", 
    "Vindås", 
    "https://www.ikea.com/se/sv/images/products/vindas-kyl-frysskap-ikea-300-fristaende-rostfritt-stalfaerg__1201509_pe905678_s5.jpg?f=xl", 
    []
  );

  Product _product2 = Product(
    "fakeID", 
    "your mother", 
    "https://chargeraccount.org/wp-content/uploads/2023/06/K7Kk3DSxN0r4AVhONa9ruggbas3DWRIrbnHw1dJc-1-900x600.jpg", 
    []
  );

  Product _product3 = Product(
    "lol",
    "yeah",
    "https://mlpforums.com/uploads/post_images/img-2978630-1-F4Du9wL.jpg",
    []
  );

  static List<SparePart> _partsList = List.empty(growable: true);
  static List<Product> _productList = List.empty(growable: true);

  // public constructor that always returns the same instance
  factory Parts() => _this;

  // private constructor to avoid multiple instances
  Parts._privateConstructor() {
    // spare-parts
    _partsList.add(_part1);
    _partsList.add(_part2);
    _partsList.add(_part3);
    _partsList.add(_part4);
    _partsList.add(_part5);
    _partsList.add(_part6);

    // products
    // TODO ADD PROPER SPARE-PARTS FROM IKEA WEBSITE

    _product1.addListOfSpareParts([_part1, _part2]);
    _product2.addListOfSpareParts([_part3, _part2, _part5]);
    _product3.addListOfSpareParts([_part1, _part4, _part6, _part2]);

    _productList.addAll([_product1, _product2, _product3]);
  }
  List<SparePart> getSpareParts() => _partsList;
  List<Product> getProducts() => _productList;

}
