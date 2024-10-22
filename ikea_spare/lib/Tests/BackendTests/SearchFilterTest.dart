import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Widgets/FilterButtonChoice.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';
import 'package:ikea_spare/Widgets/DropdownCard.dart';
import 'package:ikea_spare/Backend/SearchFilter.dart';

void main() {
  group('SearchFilter tests', () {
    late List<Product> testProducts;
    late List<SparePart> testParts;

    setUp(() {
      // Initialize some test data
      testProducts = [
        Product( 'test1','Chair', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfFhlQEw6PSx3BF6SapgxqFZsxLB0HUyk5pg&s'),
        Product('test2', 'Table', 'https://m.media-amazon.com/images/I/61q7LKAUsQL._AC_UF1000,1000_QL80_.jpg'),
      ];

      testParts = [
        SparePart('id1','name1', 'description1', 'https://www.ikea.com/global/assets/logos/brand/ikea.svg', ValueNotifier<int>(0), 'location1'),
        SparePart('id2','name2', 'description2', 'https://www.ikea.com/global/assets/logos/brand/ikea.svg', ValueNotifier<int>(0), 'location2'),
      ];
    });

    test('Filter All should return matching products and parts', () {
      final searchFilter = SearchFilter(
        filter: Filter.All,
        searchText: 'e',
        products: testProducts,
        parts: testParts,
      );

      final result = searchFilter.getFilteredItems();

      expect(result.length, 4); // should find both 1 product and 2 spare parts
      expect(result[0], isA<DropdownCard>());
      expect(result[2], isA<ListCard>());
    });

    test('Filter Product should return only products', () {
      final searchFilter = SearchFilter(
        filter: Filter.Product,
        searchText: 'Table',
        products: testProducts,
        parts: testParts,
      );

      final result = searchFilter.getFilteredItems();

      expect(result.length, 1); // Only 'Table' should match
      expect(result[0], isA<DropdownCard>());
    });

    test('Filter Part should return only parts', () {
      final searchFilter = SearchFilter(
        filter: Filter.Part,
        searchText: '1',
        products: testProducts,
        parts: testParts,
      );

      final result = searchFilter.getFilteredItems();

      expect(result.length, 1); // Only 'Bolt' should match
      expect(result[0], isA<ListCard>());
    });

    test('Search should be case-insensitive', () {
      final searchFilter = SearchFilter(
        filter: Filter.All,
        searchText: 'CHAIR',
        products: testProducts,
        parts: testParts,
      );

      final result = searchFilter.getFilteredItems();

      expect(result.length, 1); // 'Chair' should match even with different case
      expect(result[0], isA<DropdownCard>());
    });

    test('Background color alternation should work correctly', () {
      final searchFilter = SearchFilter(
        filter: Filter.All,
        searchText: '',
        products: [],
        parts: [],
      );

      expect(searchFilter.getBackgroundColor(), Colors.grey[50]);
      expect(searchFilter.getBackgroundColor(), Colors.lightBlue[50]);
    });
  });
}
