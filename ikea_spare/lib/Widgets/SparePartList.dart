import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/Product.dart';

import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Widgets/DropdownCard.dart';

class SparePartList {
  late List<SparePart> parts;
  late List<Product> products;

  SparePartList() {
    Parts partsInstance = Parts();
    parts = partsInstance.getSpareParts();
    products = partsInstance.getProducts();
  }

  ListView getListWidget() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false, // Garbage collection
      itemCount: parts.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            if (index < products.length)
              DropdownCard(product: products[index]),
          ],
        );
      },
    );
  }
}
