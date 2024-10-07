import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Parts.dart';

import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';

class SparePartList {
  late List<SparePart> parts;

  SparePartList() {
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
