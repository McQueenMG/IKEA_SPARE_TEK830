import 'dart:collection';

import 'package:ikea_spare/SparePart.dart';

class Parts {

  static List<SparePart> getSpareParts() {

      SparePart part1 = SparePart("761310", "Foot", "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
       "https://cdn.fixpart.net/126375/f1107baf9c6811d82078c4131e5a3d5c.jpg", 1);

      SparePart part2 = SparePart("H191825", "Cap White", "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 0015068 / IKEA",
       "https://us-tuna-sounds-images.voicemod.net/3ba22705-8a5a-4ff1-9f70-c291c63fabae-1659296288122.png", 10);

      List<SparePart> partsList = List.empty(growable: true);
      partsList.add(part1); 
      partsList.add(part2);

      //Map<String, SparePart> partsMap = HashMap(); 
      //partsMap.addAll({part1.id: part1});
      //partsMap.addAll({part2.id: part2});

  return partsList;
}

}