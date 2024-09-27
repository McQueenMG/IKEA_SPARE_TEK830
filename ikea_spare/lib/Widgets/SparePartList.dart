import 'package:flutter/material.dart';

class SparePartGrid {
  bool a = false;

  ListView getListWidget() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false, // Garbage collection
      itemBuilder: (_, index) {
        return Column(
          children: [
            Container(
              color: nextColor(),
              width: double.infinity,
              height: 100,
              child: Text("Spare part $index",
                  style: const TextStyle(color: Colors.white)),
            ),
            const Divider(), // <- can be removed if not needed
          ],
        );
      },
    );
  }

  Color nextColor() {
    a = !a;
    return a ? Colors.red : Colors.black;
  }
}
