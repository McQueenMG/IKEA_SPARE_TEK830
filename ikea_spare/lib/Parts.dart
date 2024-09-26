import 'package:ikea_spare/SparePart.dart';

class Parts {

  static List<SparePart> getSpareParts() {

      SparePart part1 = SparePart("761310", "Foot", "Denna artikel är kompatibel / passar för modellen: 00015068 / IKEA",
       "https://media.istockphoto.com/id/183289521/sv/foto/number-1.jpg?s=612x612&w=0&k=20&c=o1qe3GLjyIVsQGUTvrIKls2cHD9MQLDrnABefWrd44E=", 72.14, 1);

      SparePart part2 = SparePart("H191825", "Cap White", "Ersätter: #759530 C00336008 481946248175 STOPPER. Denna artikel är kompatibel / passar för modellen: 0015068 / IKEA",
       "https://image.spreadshirtmedia.net/image-server/v1/products/T1459A839PA4459PT28D195580702W8333H10000/views/1,width=550,height=550,appearanceId=839,backgroundColor=F2F2F2/nummer-2-klistermaerke.jpg", 77.36, 10);

      List<SparePart> partsList = List.empty(growable: true);
      partsList.add(part1); 
      partsList.add(part2);

  return partsList;
}

}