import 'package:flutter/material.dart';
import 'package:ikea_spare/Parts.dart';

import 'package:ikea_spare/SparePart.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';

class SparePartGrid {
  late List<SparePart> parts;

  SparePartGrid() {
    Parts partsInstance = Parts();
    parts = partsInstance.getSpareParts();
  }

  ListView getListWidget() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false, // Garbage collection
      itemCount: parts.length,
      itemBuilder: (_, index) {
        return Column(
          children: [
            ListCard(
              part: parts[index],
            ),
          ],
        );
      },
    );
  }
}
