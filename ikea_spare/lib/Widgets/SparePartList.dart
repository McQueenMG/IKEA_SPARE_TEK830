import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Widgets/DropdownCard.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';


/*class SparePartList {
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
            if (index < products.length)
              DropdownCard(product: products[index]),
          ],
        );
      },
    );
  }
} */

class SparePartList extends StatelessWidget {
  final Filter filter; // Accept the filter

  SparePartList({super.key, required this.filter});

  @override
  Widget build(BuildContext context) {
    Parts partsInstance = Parts();
    List<SparePart> parts = partsInstance.getSpareParts();
    List<Product> products = partsInstance.getProducts();

    // Filter parts or products based on the selected filter
    List<Widget> filteredItems;
    switch (filter) {
      case Filter.All:
        filteredItems = [
          ...parts.map((part) => ListCard(part: part)),
          ...products.map((product) => DropdownCard(product: product)),
        ];
        break;
      case Filter.Part:
        filteredItems = parts.map((part) => ListCard(part: part)).toList();
        break;
      case Filter.Product:
        filteredItems = products.map((product) => DropdownCard(product: product)).toList();
        break;
    }

    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: filteredItems,
    );
  }
}