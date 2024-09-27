
import 'package:ikea_spare/SparePart.dart';

class Parts {
  SparePart _part1 = SparePart(
      "761310",
      "Foot",
      "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
      "https://cdn.fixpart.net/126375/f1107baf9c6811d82078c4131e5a3d5c.jpg",
      1);

  SparePart _part2 = SparePart(
      "H191825",
      "Cap White",
      "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 0015068 / IKEA",
      "https://us-tuna-sounds-images.voicemod.net/3ba22705-8a5a-4ff1-9f70-c291c63fabae-1659296288122.png",
      10);

  List<SparePart> _partsList = List.empty(growable: true);

  Parts() {
    _partsList.add(_part1);
    _partsList.add(_part2);
  }
  List<SparePart> getSpareParts() => _partsList;

  SparePart getSparePartFromId(String id) {
    SparePart part = SparePart("0", "Not Found", "Not Found",
        "https://www.ikea.com/global/assets/logos/brand/ikea.svg", 0);
    _partsList.forEach((element) {
      if (element.getId == id) {
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
  }

/* static List<String> getIDs() {
  List<String> ids = List.empty(growable: true);
  getSpareParts().keys.forEach((part) => ids.add(part));
  return ids;
} */
}
