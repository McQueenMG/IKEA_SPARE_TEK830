import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/Product.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';

class DropdownCard extends StatefulWidget {
  // Accepting title as a required argument
  const DropdownCard({super.key, required this.product});

  final Product product;

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<DropdownCard> {
  // Responsible for toggle state
  bool _showData = false;
  Parts partsInstance = Parts();

  @override
  Widget build(BuildContext context) {
    // Fetch the parts list
    List<SparePart> parts = widget.product.getSpareParts;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10.0),
        // Title card with toggle functionality
        GestureDetector(
          onTap: () {
            setState(() => _showData = !_showData);
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 131, 181, 223),
              borderRadius: _showData
                  ? const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ) // Top corners rounded when expanded
                  : BorderRadius.circular(
                      10.0), // All corners rounded when collapsed
              boxShadow: const [
                BoxShadow(color: Colors.grey, offset: Offset(0.0, 3.0)),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Add the network image here
                  Image.network(
                    widget.product.getImageUrl,
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 10.0),
                  // Title text
                  Text(widget.product.getName),
                ],
              ),
            ),
          ),
        ),
        // The expandable content (spare parts list)
        _showData
            ? Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 131, 181, 223), // Blue color for the border
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(14.0),
                    bottomRight: Radius.circular(14.0),
                  ), // Rounded corners only at the bottom
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 131, 181,
                        223), // Blue background inside the border
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                    ), // Inner container border radius
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: parts.map((e) {
                      return ListCard(
                        part: e,
                      );
                    }).toList(),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
