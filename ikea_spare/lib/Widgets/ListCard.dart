import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

class ListCard extends StatelessWidget {
  const ListCard({super.key, required this.part, required this.backgroundColor});

  final SparePart part;
  final Color backgroundColor;

  final double cardHeight = 65;
  final int maxLines = 3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: cardHeight,
      child: Card(
        color: backgroundColor,
        shape: const LinearBorder(),
        margin: const EdgeInsets.only(top: 0, bottom: 0, left: 5, right: 5),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              width: cardHeight,
              height: double.infinity,
              child: Image.network(
                part.getImageUrl,
                fit: BoxFit.cover,
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
                        part.getLocation,
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
