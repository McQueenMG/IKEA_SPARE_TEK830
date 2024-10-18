import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/Parts.dart';

void main() {
  group('Parts Singleton', () {
    test('should always return the same instance', () {
      Parts instance1 = Parts();
      Parts instance2 = Parts();
      expect(instance1, same(instance2)); // Ensure both instances point to the same reference
    });
  });

  group('Parts SparePart Association', () {
    test('should associate correct spare parts with products', () {
      Parts parts = Parts();

      // MATTRADITION product has 4 parts associated in the constructor
      Product mattradition = parts.getProductFromID("80411724");
      List<SparePart> mattraditionParts = mattradition.getSpareParts;

      expect(mattraditionParts.length, 4); // Verify the number of parts

      // Check if specific spare part (e.g., _ovenSeal) is added to the MATTRADITION product
      expect(mattraditionParts.any((part) => part.getId == 'U252354'), isTrue);
    });

    test('should return correct spare parts list', () {
      Parts parts = Parts();
      List<SparePart> allParts = parts.getSpareParts();

      expect(allParts.length, greaterThan(0)); // Ensure that the parts list isn't empty
      expect(allParts.any((part) => part.getId == 'H982579'), isTrue); // Check specific part existence
    });
  });

  group('SparePart Notifier', () {
    test('should notify when spare part quantity changes', () {
      SparePart part = SparePart(
        "U252354",
        "Oven Seal Std Materia",
        "Oven seal for MATTRADITION",
        "url",
        ValueNotifier<int>(1),
        "10:9:1"
      );

      // Listener to check notifications
      part.getQuantity.addListener(() {
        expect(part.getQuantity.value, 5); // We expect the value to be updated to 5
      });

      // Change the value
      part.setQuantity(5);
    });
  });

  group('Getter Methods', () {
    test('should get product by ID', () {
      Parts parts = Parts();

      Product product = parts.getProductFromID("80411724");
      expect(product.getName, "MATTRADITION");
    });

    test('should return null for non-existing product ID', () {
      Parts parts = Parts();

      expect(parts.getProductFromID("invalidID"), throwsException);
    });

    test('should get spare part by ID', () {
      Parts parts = Parts();

      SparePart part = parts.getSparePartFromID("U252354");
      expect(part.getName, "Oven Seal Std Materia");
    });

    test('should return null for non-existing spare part ID', () {
      Parts parts = Parts();

      expect(parts.getSparePartFromID("invalidID"), throwsException);
    });
  });
}
