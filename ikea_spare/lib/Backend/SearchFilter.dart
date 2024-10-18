import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';
import 'package:ikea_spare/Widgets/DropdownCard.dart';

class SearchFilter {
  final Filter filter;
  final String searchText;
  final List<Product> products;
  final List<SparePart> parts;

  SearchFilter({
    required this.filter,
    required this.searchText,
    required this.products,
    required this.parts,
  });

  List<Widget> getFilteredItems() {
    final lowerCaseSearchText = searchText.toLowerCase();
    List<Widget> filteredItems;
    switch (filter) {
      case Filter.All:
        filteredItems = [
           ...products.where((product) => product.getName.toLowerCase().contains(lowerCaseSearchText) || product.getId.toLowerCase().contains(lowerCaseSearchText)).map((product) => DropdownCard(product: product)),
          ...parts.where((part) => part.getName.toLowerCase().contains(lowerCaseSearchText) || part.getId.toLowerCase().contains(lowerCaseSearchText)).map((part) => ListCard(part: part, backgroundColor: getBackgroundColor(),)),
        ];
        break;
      case Filter.Part:
        filteredItems = parts.where((part) => part.getName.toLowerCase().contains(lowerCaseSearchText) || part.getId.toLowerCase().contains(lowerCaseSearchText)).map((part) => ListCard(part: part, backgroundColor: getBackgroundColor(),)).toList();
        break;
      case Filter.Product:
        filteredItems = products.where((product) => product.getName.toLowerCase().contains(lowerCaseSearchText) || product.getId.toLowerCase().contains(lowerCaseSearchText)).map((product) => DropdownCard(product: product)).toList();
        break;
    }
    return filteredItems;
  }

  int i = 0;
  Color getBackgroundColor() {
    i++;
    if(i % 2 == 0) {
      return Colors.lightBlue[50]!;
    } else {
      return Colors.grey[50]!;
    }
  }
}