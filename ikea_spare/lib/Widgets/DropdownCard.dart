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
              borderRadius: BorderRadius.circular(10.0),
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
                  const SizedBox(
                      width:
                          10.0),
                  // Title text
                  Text(widget.product.getName),
                ],
              ),
            ),
          ),
        ),
        // The expandable content (spare parts list)
        _showData
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: parts.map((e) {
                  return ListCard(
                    part: e,
                  );
                }).toList(),
              )
            : const SizedBox(), // Else, show nothing
      ],
    );
  }
}
