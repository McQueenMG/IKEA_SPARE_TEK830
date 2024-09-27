import 'package:flutter/material.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';

class SparePartGrid {
  bool a = false;

  ListView getListWidget() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false, // Garbage collection
      itemBuilder: (_, index) {
        return Column(
          children: [
            ListCard(
              title: "Spare Part $index",
              information: "Description of Spare Part $index",
              image: "https://media.tenor.com/wsbmWYxnJYQAAAAM/kermit-falling.gif",
            ),
          ],
        );
      },
    );
  }
}
