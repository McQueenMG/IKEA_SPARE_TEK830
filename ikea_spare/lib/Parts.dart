
// ignore_for_file: prefer_final_fields

import 'package:ikea_spare/SparePart.dart';

class Parts {
  SparePart _part1 = SparePart(
      "761310",
      "Foot",
      "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
      "https://cdn.fixpart.net/126375/f1107baf9c6811d82078c4131e5a3d5c.jpg",
      23);

  SparePart _part2 = SparePart(
      "H191825",
      "Cap White",
      "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
      "https://cdn.fixpart.net/90861849/ea5b7744ba89682e54e5e21b9a799f61.jpg",
      16);

  SparePart _part3 = SparePart(
    "U232204",
    "Ventilation Uc White Gw",
    "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/91543346/8ec4876ee019f7053530cd1b3d38b3d4.jpg",
    5
  );

  SparePart _part4 = SparePart(
    "7350424",
    "Freezer drawer",
    "Ersätter: #754487 C00341247 481941849693 DRAWER. Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/5120664/28cfba20b9f25a9d8d2020b17779536b.jpg",
    1
  );

  SparePart _part5 = SparePart(
    "3091973",
    "Spring Thermostat",
    "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
    "https://cdn.fixpart.net/44098/9ae8d67525cd434d33ee8750d93cb970.jpg",
    1
  );

  SparePart _part6 = SparePart(
    "G746691",
    "Dwb305, Cutlery Basket_cz E Gr H P Ro Sk",
    "Ersätter: #F468189 DWB303 484000001070 CUTLERY BASKET WPRO UNIVERSAL.\nErsätter: #G746692 C00380125 484000008561 DWB304, 2 IN 1 UNIVERSAL DISHWASHER CUTLERY BASKET 20X22X16,4CM\nDenna artikel är kompatibel / passar för modellen: DWF902W / IKEA",
    "https://cdn.fixpart.net/90161177/a0cdcb58e4e6dbba4fb783108eb0e6da.jpg",
    1
  );

  List<SparePart> _partsList = List.empty(growable: true);

  Parts() {
    _partsList.add(_part1);
    _partsList.add(_part2);
    _partsList.add(_part3);
    _partsList.add(_part4);
    _partsList.add(_part5);
    _partsList.add(_part6);
  }
  List<SparePart> getSpareParts() => _partsList;

  /* SparePart getSparePartFromId(String id) {
    SparePart part = SparePart("0", "Not Found", "Not Found",
        "https://www.ikea.com/global/assets/logos/brand/ikea.svg", 0);
    _partsList.forEach((element) {
      if (element.getId() == id) {
        part = element;
      }
    });
    return part;
  }

  SparePart getSparePartFromName(String name) {
    SparePart part = SparePart("0", "Not Found", "Not Found",
        "https://www.ikea.com/global/assets/logos/brand/ikea.svg", 0);
    _partsList.forEach((element) {
      if (element.getName == name) {
        part = element;
      }else{
        throw Exception("Part not found");
      }
    });
    return part;
  } */

/* static List<String> getIDs() {
  List<String> ids = List.empty(growable: true);
  getSpareParts().keys.forEach((part) => ids.add(part));
  return ids;
} */
}
