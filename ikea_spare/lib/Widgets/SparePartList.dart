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
      shrinkWrap: true,
      addAutomaticKeepAlives: false, // Garbage collection
      itemCount: parts.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            if (index < products.length) DropdownCard(product: products[index]),
          ],
        );
      },
    );
  }

  Widget getListHeader() {
    return Row(
      children: [
        Container(
          width: 78, // Fixed width for the image
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Name",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "ID",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Location",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
        const VerticalDivider(),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Text(
              "Quantity",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              softWrap: false,
            ),
          ),
        ),
      ],
    );
  }
}
