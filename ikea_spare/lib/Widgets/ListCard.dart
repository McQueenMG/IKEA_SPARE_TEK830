import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.part
    });

  final SparePart part;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 90,
      child: Card(
        color: Colors.lightBlue[50],
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              width: 90, // Fixed width for the image
              height: double.infinity, // Fixed height for the image
              child: Image.network(
                part.getImageUrl,
                fit: BoxFit.cover, // Adjust to cover the container
              ),
            ),
            Expanded(
              // Use Expanded to fill remaining space
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Add padding for text
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Align text to the start
                  children: [
                    Text(
                      part.getName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4), // Space between title and subtitle
                    Text(
                      "ID: ${part.getId}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    Text(
                      "Quantity: ${part.getQuantity}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    // Text(
                    //   part.getDescription,
                    //   maxLines: 3,
                    //   overflow: TextOverflow.ellipsis,
                    //   softWrap: false,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
