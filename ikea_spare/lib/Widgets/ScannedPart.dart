import 'package:flutter/material.dart';

class ScannedPart extends StatefulWidget {
  const ScannedPart(
      {Key? key,
      required this.title,
      required this.image})
      : super(key: key);

  final String title;
  final String image;
  @override
  State<ScannedPart> createState() => ScannedPartState();
 
}
class ScannedPartState extends State<ScannedPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                widget.image,
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
                      widget.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4), // Space between title and subtitle
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }}