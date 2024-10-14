import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/SearchFilter.dart';


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

class SparePartList extends StatefulWidget {
  final Filter filter; 
  final String searchText; 

  SparePartList({super.key, required this.filter, required this.searchText});

  @override
  _SparePartListState createState() => _SparePartListState();
}

class _SparePartListState extends State<SparePartList> {
  List<Product> _products = [];
  List<SparePart> _parts = [];
  

  @override
  void initState() {
    super.initState();
    Parts partsInstance = Parts();
    _products = partsInstance.getProducts();
    _parts = partsInstance.getSpareParts();
  }

  @override
  Widget build(BuildContext context) {
    SearchFilter itemFilter = SearchFilter(
      filter: widget.filter,
      searchText: widget.searchText,
      products: _products,
      parts: _parts,
    );

    List<Widget> filteredItems = itemFilter.getFilteredItems();

    return ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: filteredItems,
    );
  }
}