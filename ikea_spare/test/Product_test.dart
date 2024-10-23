import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/Product.dart';

void main() {
  group('Product tests', () {
    late SparePart part1;
    late SparePart part2;
    late SparePart part3;

    setUp(() {
      // Initialize some spare parts for testing
      part1 = SparePart("P1", "Leg", "Metal leg", "url1", ValueNotifier<int>(0), "Aisle 1");
      part2 = SparePart("P2", "Bolt", "Metal bolt", "url2", ValueNotifier<int>(0), "Aisle 2");
      part3 = SparePart("P3", "Screw", "Metal screw", "url3", ValueNotifier<int>(0), "Aisle 3");
    });

    test('Constructor should initialize fields correctly', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");

      expect(product.getId, "123");
      expect(product.getName, "Chair");
      expect(product.getImageUrl, "https://example.com/chair.png");
      expect(product.getSpareParts, isEmpty); // Should start with an empty list of spare parts
    });

    test('Getter methods should return correct values', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");

      expect(product.getId, "123");
      expect(product.getName, "Chair");
      expect(product.getImageUrl, "https://example.com/chair.png");
    });

    test('Adding a spare part should work correctly', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");

      product.addSparePart(part1);
      expect(product.getSpareParts.length, 1);
      expect(product.getSpareParts[0], part1);
    });

    test('Adding a list of spare parts should work correctly', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");

      product.addListOfSpareParts([part1, part2]);
      expect(product.getSpareParts.length, 2);
      expect(product.getSpareParts, containsAll([part1, part2]));
    });

    test('Removing a spare part should work correctly', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");
      product.addSparePart(part1);

      product.removeSparePart(part1);
      expect(product.getSpareParts, isEmpty); // The list should be empty after removing
    });

    test('Removing a spare part that doesn\'t exist should not change the list', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");
      product.addSparePart(part1);

      product.removeSparePart(part2); // part2 is not in the list
      expect(product.getSpareParts.length, 1); // The list should still contain part1
      expect(product.getSpareParts[0], part1);
    });

    test('Removing a list of spare parts should work correctly', () {
      final product = Product("123", "Chair", "https://example.com/chair.png");
      product.addListOfSpareParts([part1, part2, part3]);

      product.removeListOfSpareParts([part1, part2]);
      expect(product.getSpareParts.length, 1); // Only part3 should remain
      expect(product.getSpareParts[0], part3);
    });
  });
}
