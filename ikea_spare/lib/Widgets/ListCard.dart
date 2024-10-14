import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.part});

  final SparePart part;

  final double cardHeight = 90;
  final int maxLines = 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: cardHeight,
      child: Card(
        color: Colors.lightBlue[50],
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              width: 90, // Fixed width for the image
              height: double.infinity, // Fixed height for the image
              child: Image.network(
                part.getImageUrl,
                fit: BoxFit.cover, // Adjust to cover the container
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        part.getName,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        part.getId,
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Text(
                        "temp", // Static text
                        maxLines: maxLines,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                      ),
                    ),
                  ),
                  const VerticalDivider(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: ValueListenableBuilder<int>(
                        valueListenable: part.getQuantity,
                        builder: (context, quantity, _) {
                          return Text(
                            "$quantity", // Automatically updates the quantity
                            maxLines: maxLines,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
