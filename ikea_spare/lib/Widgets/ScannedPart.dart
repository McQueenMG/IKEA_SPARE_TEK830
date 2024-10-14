import 'package:flutter/material.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/SparePart.dart';

class ScannedPart extends StatefulWidget {
  final String name;
  final String image;
  final int quantity;

  ScannedPart({super.key, required this.name, required this.image, required this.quantity});

  @override
  State<ScannedPart> createState() => _ScannedPartState();
}

class _ScannedPartState extends State<ScannedPart> {
  static int tmp = 0;
  Parts partsInstance = Parts();
 // blah
  @override
  void initState() {
    super.initState();
    tmp = widget.quantity; // Initialize tmp with the provided quantity
  }

  @override
  Widget build(BuildContext context) {
    List<SparePart> parts = partsInstance.getSpareParts();

    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("HEHEJEH"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    updateQuantity(parts, parts[1].getId, 5); // Updated method call
                  },
                  child: const Text("Remove"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Center(
                    child: Card(
                      color: Colors.blue,
                      child: Text(tmp.toString()),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: increase,
                  child: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void increase() {
    setState(() {
      tmp++;
    });
  }

  void updateQuantity(List<SparePart> parts, String id, int newQuantity) {
    setState(() {
      for (var part in parts) {
        if (part.getId == id) {
          print("Old quantity: ${part.getQuantity.value}");
          part.getQuantity.value = newQuantity; // Set the new value directly
          print("New quantity: ${part.getQuantity.value}");
        }
      }
    });
  }
}
