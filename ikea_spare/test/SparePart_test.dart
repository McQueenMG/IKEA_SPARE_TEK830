import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

void main() {
  group('SparePart tests', () {
    test('Constructor should initialize fields correctly', () {
      final sparePart = SparePart(
        "123",
        "Screw",
        "A small screw",
        "https://example.com/screw.png",
        ValueNotifier<int>(5),
        "Aisle 10"
      );

      expect(sparePart.getId, "123");
      expect(sparePart.getName, "Screw");
      expect(sparePart.getDescription, "A small screw");
      expect(sparePart.getImageUrl, "https://example.com/screw.png");
      expect(sparePart.getQuantity.value, 5);
      expect(sparePart.getLocation, "Aisle 10");
    });

    test('Getter methods should return correct values', () {
      final sparePart = SparePart(
        "123",
        "Screw",
        "A small screw",
        "https://example.com/screw.png",
        ValueNotifier<int>(5),
        "Aisle 10"
      );

      expect(sparePart.getId, "123");
      expect(sparePart.getName, "Screw");
      expect(sparePart.getDescription, "A small screw");
      expect(sparePart.getImageUrl, "https://example.com/screw.png");
      expect(sparePart.getQuantity.value, 5);
      expect(sparePart.getLocation, "Aisle 10");
    });

    test('Quantity should not be set below 0', () {
      final sparePart = SparePart(
        "123",
        "Screw",
        "A small screw",
        "https://example.com/screw.png",
        ValueNotifier<int>(5),
        "Aisle 10"
      );

      sparePart.setQuantity(-5);
      expect(sparePart.getQuantity.value, 0); // Quantity should be 0 when set below 0
    });

    test('Quantity should update correctly when set to positive values', () {
      final sparePart = SparePart(
        "123",
        "Screw",
        "A small screw",
        "https://example.com/screw.png",
        ValueNotifier<int>(5),
        "Aisle 10"
      );

      sparePart.setQuantity(10);
      expect(sparePart.getQuantity.value, 10); // Quantity should update to 10
    });

    test('ValueNotifier should notify listeners when quantity changes', () {
      final sparePart = SparePart(
        "123",
        "Screw",
        "A small screw",
        "https://example.com/screw.png",
        ValueNotifier<int>(5),
        "Aisle 10"
      );

      bool listenerCalled = false;
      sparePart.getQuantity.addListener(() {
        listenerCalled = true;
      });

      sparePart.setQuantity(10);
      expect(listenerCalled, true); // Listener should be called
    });
  });
}
