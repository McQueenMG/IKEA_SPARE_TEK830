import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard(
      {super.key,
      required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.quantity});

  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Card(
        color: Colors.lightBlue[50],
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              width: 150, // Fixed width for the image
              height: double.infinity, // Fixed height for the image
              child: Image.network(
                imageUrl,
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
                      name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4), // Space between title and subtitle
                    Text(
                      description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
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
