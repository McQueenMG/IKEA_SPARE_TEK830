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

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  // MATTRADITION
  SparePart _ovenSeal = SparePart(
      "U252354",
      "Oven Seal Std Materia",
      "Ersätter: #H312064 C00385306 481010846713 DOOR SEAL\nErsätter: #X474268 OVEN DOOR GASKET ALTERNATIVE FOR BAUKNECHT 488000725238\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA",
      "https://cdn.fixpart.net/91464896/59a67f1f6c1db26be8e961f6d5a00f0c.jpg",
      ValueNotifier<int>(1),
      "10:9:1");

  SparePart _bakingTray = SparePart(
      "H982579",
      "Baking Tray, Grey",
      "Produktegenskaper\nBredd: 47,7 cm\nLängd: 37 cm\nHöjd: 2,3 cm\nMaterial: emaljerad\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA",
      "https://cdn.fixpart.net/90120553/7bda9c4efaa248e22d215aa530a7332f.jpg",
      ValueNotifier<int>(2),
      "10:9:1");

  SparePart _innerDoorGlass = SparePart(
      "Q781475",
      "Inner Door Glass",
      "Ersätter: #H315312 C00385305 481010826397 INNER DOOR GLASS\nErsätter: #Q118311 INNER DOOR GLASS ALTERNATIVE FOR WHIRLPOOL\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA",
      "https://cdn.fixpart.net/90742626/9b762bbedbc028d0ddcd2c2cc94b3000.jpg",
      ValueNotifier<int>(3),
      "10:9:1");

  SparePart _ovenShelf = SparePart(
      "U808059",
      "Oven Shelf 478.5 X 365 mm",
      "Ersätter: #H314677 C00385308 481010828296 OVEN SHELF\nErsätter: #M302893 C00526696 488000526696 OVEN SHELF 478,5 X 365 MM\nDenna artikel är kompatibel / passar för modellen: MATTRADITION MATTRADITION / IKEA",
      "https://cdn.fixpart.net/221927674/30cc0434fd96da22124c239e7d51b862.jpg",
      ValueNotifier<int>(4),
      "10:9:1");

  // KOLSTAN

  SparePart _masterCableClamp = SparePart(
      "U261940",
      "Cable Clamp (for master)",
      "Replaces: #U805310 133.0617.059 CABLE CLAMP (FOR MASTER) 75.177.63 / 01\n(This article is compatible / suitable for the model: KOLSTAN KOLSTAN / IKEA",
      "https://cdn.fixpart.net/206979562/6d062ca2290c677d99ae6eeb4bd0fb11.jpg",
      ValueNotifier<int>(5),
      "10:9:1");

  SparePart _alimGeneratore = SparePart(
      "U805311",
      "Coperchio Alim.generatore",
      "This article is compatible / suitable for the model: KOLSTAN KOLSTAN / IKEA",
      "https://cdn.fixpart.net/312448518/5b323db2d2aa31d77d3d36ad12344d77.jpg",
      ValueNotifier<int>(6),
      "10:9:1");

  // PINNTORP
  SparePart _longScew = SparePart(
      "10056782",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/10056782.png",
      ValueNotifier<int>(100),
      "10:9:1");

  SparePart _woodStickThing = SparePart(
      "110912",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/110912.png",
      ValueNotifier<int>(75),
      "10:9:1");

  SparePart _hexnut = SparePart(
      "100712",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/100712.png",
      ValueNotifier<int>(123),
      "10:9:1");

  SparePart _metalBendThing = SparePart(
      "122483",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/122483.png",
      ValueNotifier<int>(23),
      "10:9:1");

  SparePart _handScrew = SparePart(
      "10083377",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/10083377.png",
      ValueNotifier<int>(19),
      "10:9:1");

  SparePart _dowl = SparePart(
      "101350",
      "Wooden dowl",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/101350.png",
      ValueNotifier<int>(37),
      "10:9:1");

  SparePart _metalCornerThing = SparePart(
      "102646",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/102646.png",
      ValueNotifier<int>(47),
      "10:9:1");

  // RENGÖRA

  SparePart _cutleryTray = SparePart(
      "H321279",
      "Cutlery Tray (3-pieces) Medium",
      "replaces: #9522126 C00257140 482000023046 CUTLERY BASKET GREY\nreplaces: #F550224 C00301361 482000032215 CUTLERY TRAY\nreplaces: #W332637 CUTLERY BASKET ALTERNATIVE FOR WHIRLPOOL/INDESIT 482000023046 C00257140\nThis article is compatible / suitable for the model: RENGÖRA 869991593340 / IKEA",
      "https://cdn.fixpart.net/5664760/a5a252df92b112f029c2eaf8ad6718a2.jpg",
      ValueNotifier<int>(3),
      "10:9:1");

  SparePart _railBackStop = SparePart(
      "H430725",
      "Rail Back Stop Dark Gray",
      "This article is compatible / suitable for the model: RENGÖRA 869991593340 / IKEA",
      "https://cdn.fixpart.net/90077884/e2c9556a726c7a96a1996ab9e8cbd8e5.jpg",
      ValueNotifier<int>(10),
      "10:9:1");

  SparePart _waterstopHoseLong = SparePart(
      "G653888",
      "Inlet Hose Long Waterstop 1600mm",
      "This article is compatible / suitable for the model: RENGÖRA 869991593340 / IKEA",
      "https://cdn.fixpart.net/218961/95fa4be334e2666b25c60fede5ed77cf.jpg",
      ValueNotifier<int>(17),
      "10:9:1");

  SparePart _microfilter = SparePart(
      "9770023",
      "Microfilter",
      "This article is compatible / suitable for the model: RENGÖRA 869991593340 / IKEA",
      "https://cdn.fixpart.net/172040/17bd5e6d5ad8984486ec5d3152f1ca69.jpg",
      ValueNotifier<int>(26),
      "10:9:1");

  // LAGAN

  SparePart _carbonFilter = SparePart(
      "G136854",
      "Carbon Filter",
      "replaces: #M443082 CFC0145233 NYTTIG FIL 900 N AKTIVKOHLEFILTER LONG.LIFE 48 MULT.24X1PZ KREA NG\nThis article is compatible / suitable for the model: LAGAN LAGAN / IKEA",
      "https://cdn.fixpart.net/90417999/d74ce1eefd10a85a12f74697835e2fdf.jpg",
      ValueNotifier<int>(35),
      "10:9:1");

  SparePart _controlPanel = SparePart(
      "M132777",
      "Control Panel Assy",
      "replaces: #M461562 BE1BWA CONTROL PANEL PULS.MECC 4T 3V P4T3V (AKA)\nThis article is compatible / suitable for the model: LAGAN LAGAN / IKEA",
      "https://cdn.fixpart.net/90578775/763c2905e7bf82b2887c1e18c2d229f3.jpg",
      ValueNotifier<int>(25),
      "10:9:1");

  SparePart _metalGreaseFilter = SparePart(
      "H992314",
      "Metallic Grease Filter",
      "replaces: #G334895 C00302744 488000302744 GREASE FILTER\nThis article is compatible / suitable for the model: LAGAN LAGAN / IKEA",
      "https://cdn.fixpart.net/90124634/8d8d6c1cca6780c86efb92a19b0b7f0f.jpg",
      ValueNotifier<int>(50),
      "10:9:1");

  // VINDÅS

  SparePart _lowerHingeAssembly = SparePart(
      "M300633",
      "Lower Hinge Assembly",
      "This article is compatible / suitable for the model: VINDÅS VINDÅS / IKEA",
      "https://cdn.fixpart.net/90152572/befa8fb926e88b9d272aa490b8012f94.jpg",
      ValueNotifier<int>(76),
      "10:9:1");

  SparePart _crisperBox = SparePart(
      "M300623",
      "Crisper Box",
      "This article is compatible / suitable for the model: VINDÅS VINDÅS / IKEA",
      "https://cdn.fixpart.net/90152574/2f35ece4aefb1dc3db60d3dc7fdb6018.jpg",
      ValueNotifier<int>(45),
      "10:9:1");

  SparePart _screw = SparePart(
      "9426943",
      "Screw (m5x12)",
      "This article is compatible / suitable for the model: VINDÅS VINDÅS / IKEA",
      "https://cdn.fixpart.net/166073/d6a276139fe72e6fadd32afcfa989fe2.jpg",
      ValueNotifier<int>(140),
      "10:9:1");

  // TILLREDA

  SparePart _glassTurntable = SparePart(
      "Q96912",
      "Glass Turntable",
      "This article is compatible / suitable for the model: MM720CPM0E00 TILLREDA / IKEA",
      "https://cdn.fixpart.net/90121712/335a1e1ba4377dad6e19280802e00260.jpg",
      ValueNotifier<int>(23),
      "10:9:1");

  SparePart _latchSpring = SparePart(
      "Q142032",
      "Latch Spring",
      "This article is compatible / suitable for the model: MM720CPM0E00 TILLREDA / IKEA",
      "https://cdn.fixpart.net/90181588/acd5fb3133ec0fc3b286a39d8322719f.jpg",
      ValueNotifier<int>(34),
      "10:9:1");

  SparePart _swivelAssembly = SparePart(
      "Q96889",
      "Swivel Assembly",
      "This article is compatible / suitable for the model: MM720CPM0E00 TILLREDA / IKEA",
      "https://cdn.fixpart.net/90127893/dffe2c9b75ef7eba9c63e8aba7363642.jpg",
      ValueNotifier<int>(54),
      "10:9:1");

  SparePart _foot = SparePart(
      "Q96895",
      "Foot",
      "This article is compatible / suitable for the model: MM720CPM0E00 TILLREDA / IKEA",
      "https://cdn.fixpart.net/90169530/68e2293d4a11458c92dc94dff710f8b7.jpg",
      ValueNotifier<int>(76),
      "10:9:1");

  SparePart _coupler = SparePart(
      "Q189653",
      "Coupler",
      "This article is compatible / suitable for the model: MM720CPM0E00 TILLREDA / IKEA",
      "https://cdn.fixpart.net/308776894/a40fdb666dabbe98fec5b96f367bea92.jpg",
      ValueNotifier<int>(82),
      "10:9:1");

  // LÅNGUDDEN

  SparePart _drainPipeThing = SparePart(
      "148962",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/148962.png",
      ValueNotifier<int>(6),
      "10:9:1");

  SparePart _plank = SparePart(
      "10107966",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/10107966.png",
      ValueNotifier<int>(10),
      "10:9:1");

  SparePart _attachToStuff = SparePart(
      "109184",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/109184.png",
      ValueNotifier<int>(20),
      "10:9:1");

  SparePart _otherAttachThing = SparePart(
      "110385",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/110385.png",
      ValueNotifier<int>(15),
      "10:9:1");

  // GLITTRAN

  SparePart _waterFilterThing = SparePart(
      "10004087",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/10004087.png",
      ValueNotifier<int>(4),
      "10:9:1");

  SparePart _metalRod = SparePart(
      "10079215",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/10079215.png",
      ValueNotifier<int>(41),
      "10:9:1");

  SparePart _triangleThing = SparePart(
      "120087",
      "",
      "",
      "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/120087.png",
      ValueNotifier<int>(3),
      "10:9:1");

  SparePart _screwDriverThing = SparePart(
    "126908", 
    "", 
    "", 
    "https://www.ikea.com/global/assets/customer-service/returns-claims/spareparts/images/126908.png", 
    ValueNotifier<int>(7), 
    "10:9:1"
  );

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  Product _mattradition = Product(
    "80411724",
    "MATTRADITION",
    "https://www.ikea.com/se/sv/images/products/mattradition-varmluftsugn-ikea-300-svart__0754906_pe748163_s5.jpg?f=xl",
  );

  Product _kolstan = Product(
    "80559466",
    "KOLSTAN",
    "https://www.ikea.com/se/sv/images/products/kolstan-induktionshaell-ikea-500-svart__1225063_pe915121_s5.jpg?f=xl",
  );

  Product _pinntorpTable = Product(
    "10529468",
    "PINNTORP Table",
    "https://www.ikea.com/jp/en/images/products/pinntorp-table-light-brown-stained-white-stained__1118109_pe872932_s5.jpg?f=xl",
  );

  Product _pinntorpChair = Product(
    "00529483",
    "PINNTORP Chair",
    "https://www.ikea.com/jp/en/images/products/pinntorp-chair-light-brown-stained-katorp-natural__1343438_pe949584_s5.jpg?f=xl",
  );

  Product _rengora = Product("40475572", "RENGÖRA",
      "https://www.ikea.com/se/sv/images/products/rengoera-integrerad-diskmaskin-ikea-300__0846411_pe779069_s5.jpg?f=xl");

  Product _lagan = Product("20388967", "LAGAN Extractor fan",
      "https://www.ikea.com/se/sv/images/products/lagan-vaeggmonterad-koeksflaekt-rostfritt-stal__0755560_pe748459_s5.jpg?f=xl");

  Product _vindas = Product("10568068", "VINDÅS",
      "https://www.ikea.com/se/sv/images/products/vindas-kyl-frysskap-ikea-300-fristaende-rostfritt-stalfaerg__1201509_pe905678_s5.jpg?f=xl");

  Product _tillreda = Product("50486792", "TILLREDA",
      "https://www.ikea.com/se/sv/images/products/tillreda-mikrovagsugn-vit__0912596_pe783444_s5.jpg?f=xl");

  Product _langudden = Product("89157479", "LÅNGUDDEN",
      "https://www.ikea.com/jp/en/images/products/langudden-inset-sink-1-bowl-stainless-steel__0754640_pe748000_s5.jpg?f=xl");

  Product _glittran = Product("305.199.39", "GLITTRAN",
      "https://www.ikea.com/jp/en/images/products/glittran-kitchen-mixer-tap-brushed-black-metal__0831970_pe777539_s5.jpg?f=xl");

  static List<SparePart> _partsList = List.empty(growable: true);
  static List<Product> _productList = List.empty(growable: true);

  // public constructor that always returns the same instance
  factory Parts() => _this;

  // private constructor to avoid multiple instances
  Parts._privateConstructor() {
    // spare-parts
    _partsList.addAll([_ovenSeal, _bakingTray, _innerDoorGlass, _masterCableClamp, _longScew, _woodStickThing, _hexnut, _metalBendThing, _handScrew, _dowl, _metalCornerThing,
                       _cutleryTray, _railBackStop, _waterstopHoseLong, _microfilter, _carbonFilter, _controlPanel, _metalGreaseFilter, _lowerHingeAssembly, _crisperBox, _screw,
                       _glassTurntable, _latchSpring, _swivelAssembly, _foot, _coupler, _drainPipeThing, _plank, _attachToStuff, _otherAttachThing, _waterFilterThing, _metalRod,
                       _triangleThing, _screwDriverThing, _ovenShelf, _alimGeneratore]);

    // products
    // TODO ADD PROPER SPARE-PARTS FROM IKEA WEBSITE

    _mattradition.addListOfSpareParts(
        [_ovenSeal, _bakingTray, _innerDoorGlass, _ovenShelf]);
    _kolstan.addListOfSpareParts([_masterCableClamp, _alimGeneratore]);
    _pinntorpTable.addListOfSpareParts(
        [_longScew, _woodStickThing, _hexnut, _metalBendThing]);
    _pinntorpChair.addListOfSpareParts([_handScrew, _dowl, _metalCornerThing]);
    _rengora.addListOfSpareParts(
        [_cutleryTray, _railBackStop, _waterstopHoseLong, _microfilter]);
    _lagan.addListOfSpareParts(
        [_carbonFilter, _controlPanel, _metalGreaseFilter]);
    _vindas.addListOfSpareParts([_lowerHingeAssembly, _crisperBox, _screw]);
    _tillreda.addListOfSpareParts(
        [_glassTurntable, _latchSpring, _swivelAssembly, _foot, _coupler]);
    _langudden.addListOfSpareParts(
        [_drainPipeThing, _plank, _attachToStuff, _otherAttachThing]);
    _glittran.addListOfSpareParts(
        [_waterFilterThing, _metalRod, _triangleThing, _screwDriverThing]);

    _productList.addAll([
      _mattradition,
      _kolstan,
      _pinntorpTable,
      _pinntorpChair,
      _rengora,
      _lagan,
      _vindas,
      _tillreda,
      _langudden,
      _glittran
    ]);
  }
  List<SparePart> getSpareParts() => _partsList;
  List<Product> getProducts() => _productList;

  SparePart getSparePartFromID(String id) {
    for (SparePart part in _partsList) {
      if (part.getId == id) {
        return part;
      }
    }
    throw ("No spare-part with that ID");
  }

  Product getProductFromID(String id) {
    for (Product prod in _productList) {
      if (prod.getId == id) {
        return prod;
      }
    }
    throw ("No product with that ID");
  }
}
