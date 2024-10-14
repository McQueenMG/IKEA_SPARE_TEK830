
// ignore_for_file: prefer_final_fields

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
      23,
      "10:9:1"
    );

  SparePart _part2 = SparePart(
      "H191825",
      "Cap White",
      "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
      "https://cdn.fixpart.net/90861849/ea5b7744ba89682e54e5e21b9a799f61.jpg",
      16,
      "10:9:1"
    );

  SparePart _part3 = SparePart(
    "U232204",
    "Ventilation Uc White Gw",
    "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/91543346/8ec4876ee019f7053530cd1b3d38b3d4.jpg",
    5,
    "10:9:1"
  );

  SparePart _part4 = SparePart(
    "7350424",
    "Freezer drawer",
    "Ersätter: #754487 C00341247 481941849693 DRAWER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/5120664/28cfba20b9f25a9d8d2020b17779536b.jpg",
    1,
    "10:9:1"
  );

  SparePart _part5 = SparePart(
    "3091973",
    "Spring Thermostat",
    "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/44098/9ae8d67525cd434d33ee8750d93cb970.jpg",
    1,
    "10:9:1"
  );

  SparePart _part6 = SparePart(
    "G746691",
    "Dwb305, Cutlery Basket_cz E Gr H P Ro Sk",
    "Ersätter: #F468189 DWB303 484000001070 CUTLERY BASKET WPRO UNIVERSAL.\nErsätter: #G746692 C00380125 484000008561 DWB304, 2 IN 1 UNIVERSAL DISHWASHER CUTLERY BASKET 20X22X16,4CM\nDenna artikel är kompatibel / passar för modellen: DWF902W / IKEA",
    "https://cdn.fixpart.net/90161177/a0cdcb58e4e6dbba4fb783108eb0e6da.jpg",
    1,
    "10:9:1"
  );

  // MATTRADITION
  SparePart _ovenSeal = SparePart(
    "U252354", 
    "Oven Seal Std Materia", 
    "Ersätter: #H312064 C00385306 481010846713 DOOR SEAL\nErsätter: #X474268 OVEN DOOR GASKET ALTERNATIVE FOR BAUKNECHT 488000725238\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA", 
    "https://cdn.fixpart.net/91464896/59a67f1f6c1db26be8e961f6d5a00f0c.jpg", 
    1,
    "10:9:1"
  );

  SparePart _bakingTray = SparePart(
    "H982579", 
    "Baking Tray, Grey", 
    "Produktegenskaper\nBredd: 47,7 cm\nLängd: 37 cm\nHöjd: 2,3 cm\nMaterial: emaljerad\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA", 
    "https://cdn.fixpart.net/90120553/7bda9c4efaa248e22d215aa530a7332f.jpg", 
    2,
    "10:9:1"
  );

  SparePart _innerDoorGlass = SparePart(
    "Q781475", 
    "Inner Door Glass", 
    "Ersätter: #H315312 C00385305 481010826397 INNER DOOR GLASS\nErsätter: #Q118311 INNER DOOR GLASS ALTERNATIVE FOR WHIRLPOOL\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA", 
    "https://cdn.fixpart.net/90742626/9b762bbedbc028d0ddcd2c2cc94b3000.jpg", 
    3,
    "10:9:1"
  );

  SparePart _ovenShelf = SparePart(
    "U808059", 
    "Oven Shelf 478.5 X 365 mm", 
    "Ersätter: #H314677 C00385308 481010828296 OVEN SHELF\nErsätter: #M302893 C00526696 488000526696 OVEN SHELF 478,5 X 365 MM\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA", 
    "https://cdn.fixpart.net/221927674/30cc0434fd96da22124c239e7d51b862.jpg", 
    4,
    "10:9:1"
  );

  // KOLSTAN

  SparePart _masterCableClamp = SparePart(
    "U261940", 
    "Cable Clamp (for master)", 
    "Replaces: #U805310 133.0617.059 CABLE CLAMP (FOR MASTER) 75.177.63 / 01\n(This article is compatible / suitable for the model: KOLSTAN KOLSTAN / IKEA", 
    "https://cdn.fixpart.net/206979562/6d062ca2290c677d99ae6eeb4bd0fb11.jpg", 
    5,
    "10:9:1"
  );

  SparePart _alimGeneratore = SparePart(
    "U805311", 
    "Coperchio Alim.generatore", 
    "This article is compatible / suitable for the model: KOLSTAN KOLSTAN / IKEA", 
    "https://cdn.fixpart.net/312448518/5b323db2d2aa31d77d3d36ad12344d77.jpg", 
    6,
    "10:9:1"
  );

  // PINNTORP
  SparePart _longScew = SparePart(
    "10056782", 
    "", 
    "", 
    "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/10056782.png", 
    100,
    "10:9:1"
  );

  SparePart _woodStickThing = SparePart(
    "110912", 
    "", 
    "", 
    "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/110912.png", 
    75,
    "10:9:1"
  );

  SparePart _hexnut = SparePart(
    "100712", 
    "", 
    "", 
    "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/100712.png", 
    123,
    "10:9:1"
  );

  SparePart _metalBendThing = SparePart(
    "122483", 
    "", 
    "", 
    "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/122483.png", 
    23,
    "10:9:1"
  );

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  
  Product _mattradition = Product(
    "80411724", 
    "MATTRADITION", 
    "https://www.ikea.com/se/sv/images/products/mattradition-varmluftsugn-ikea-300-svart__0754906_pe748163_s5.jpg?f=xl", 
    []
  );

  Product _kolstan = Product(
    "80559466", 
    "KOLSTAN", 
    "https://www.ikea.com/se/sv/images/products/kolstan-induktionshaell-ikea-500-svart__1225063_pe915121_s5.jpg?f=xl", 
    []
  );

  Product _pinntorp = Product(
    "10529468", 
    "PINNTORP", 
    "https://www.ikea.com/jp/en/images/products/pinntorp-table-light-brown-stained-white-stained__1118109_pe872932_s5.jpg?f=xl", 
    []
  );

  static List<SparePart> _partsList = List.empty(growable: true);
  static List<Product> _productList = List.empty(growable: true);

  // public constructor that always returns the same instance
  factory Parts() => _this;

  // private constructor to avoid multiple instances
  Parts._privateConstructor() {
    // spare-parts
    _partsList.addAll([_ovenSeal, _bakingTray, _innerDoorGlass, _ovenSeal, _masterCableClamp, _longScew, _woodStickThing, _hexnut, _metalBendThing]);

    // products
    // TODO ADD PROPER SPARE-PARTS FROM IKEA WEBSITE

    _mattradition.addListOfSpareParts([_ovenSeal, _bakingTray, _innerDoorGlass, _ovenShelf]);
    _kolstan.addListOfSpareParts([_masterCableClamp, _alimGeneratore]);
    _pinntorp.addListOfSpareParts([_longScew, _woodStickThing, _hexnut, _metalBendThing]);

    _productList.addAll([_mattradition, _kolstan, _pinntorp]);
  }
  List<SparePart> getSpareParts() => _partsList;
  List<Product> getProducts() => _productList;


SparePart getSparePartFromID(String id) {
  for(SparePart part in _partsList) {
    if(part.getId == id) {
      return part;
    }
  }
  throw("No spare-part with that ID");
}

Product getProductFromID(String id) {
  for(Product prod in _productList) {
    if(prod.getId == id) {
      return prod;
    }
  }
  throw("No product with that ID");
}

}
