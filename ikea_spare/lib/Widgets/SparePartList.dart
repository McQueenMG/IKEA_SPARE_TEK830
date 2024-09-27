import 'package:flutter/material.dart';
import 'package:ikea_spare/Parts.dart';

import 'package:ikea_spare/SparePart.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';

class SparePartGrid {
  List<SparePart> parts = Parts.getSpareParts();

  ListView getListWidget() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false, // Garbage collection
      itemCount: parts.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            ListCard(
              id: parts[index].id,
              name: parts[index].name,
              description: parts[index].description,
              imageUrl: parts[index].imageUrl,
              quantity: parts[index].quantity,
            ),
          ],
        );
      },
    );
  }
}
