import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

class ListCard extends StatefulWidget {
  const ListCard({
    super.key,
    required this.part,
  });

  final SparePart part;

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  void initState() {
    super.initState();
    // Listen for changes in quantity
    widget.part.getQuantity.addListener(_onQuantityChanged);
  }

  @override
  void dispose() {
    // Remove the listener when the widget is disposed
    widget.part.getQuantity.removeListener(_onQuantityChanged);
    super.dispose();
  }

  void _onQuantityChanged() {
    // This will trigger a rebuild when quantity changes
    setState(() {});
  }

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
                widget.part.getImageUrl,
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
                      widget.part.getName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4), // Space between title and subtitle
                    Text(
                      "ID: ${widget.part.getId}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                    // Display the updated quantity
                    ValueListenableBuilder<int>(
                      valueListenable: widget.part.getQuantity,
                      builder: (context, quantity, _) {
                        return Text(
                          "Quantity: $quantity",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          softWrap: false,
                        );
                      },
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
