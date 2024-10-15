import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Widgets/ListCard.dart';

class ScannedPart extends StatefulWidget {
  final SparePart part;

  ScannedPart({
    super.key,
    required this.part,
  });

  @override
  State<ScannedPart> createState() => _ScannedPartState();
}

class _ScannedPartState extends State<ScannedPart> {
  int? input;
  Parts partsInstance = Parts();
  // blah
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<SparePart> parts = partsInstance.getSpareParts();

    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Container(
        height: 250,
        width: double.infinity / 1.5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.lightBlue[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              child: ListCard(part: parts[1]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      removeQuantity(
                          parts, parts[1].getId); // Updated method call
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
                    width: 70,
                    height: 60,
                    child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: const InputDecoration(                            
                            contentPadding: EdgeInsets.only(left: 5),
                            labelText: 'Quantity',
                            labelStyle: TextStyle(fontSize: 12),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered

                          //get input
                          onChanged: (value) {
                            // Use tryParse to safely parse the input
                            input = int.tryParse(value);
                            // Handle the case where the input is invalid
                            if (input == null) {
                              print('Invalid input: Not a valid integer');
                            }
                          },
                        ),
                      
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      addQuantity(
                          parts, parts[1].getId); // Updated method call
                    },
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
      ),
    );
  }
  void removeQuantity(List<SparePart> parts, String id) {
    setState(() {
      for (var part in parts) {
        if (part.getId == id) {
          print("Old quantity: ${part.getQuantity.value}");
          int tmp = part.getQuantity.value - input!;
          part.getQuantity.value = tmp; // Set the new value directly
          print("New quantity: ${part.getQuantity.value}");
        }
      }
    });
  }
  void addQuantity(List<SparePart> parts, String id) {
    setState(() {
      for (var part in parts) {
        if (part.getId == id) {
          print("Old quantity: ${part.getQuantity.value}");
          int tmp = part.getQuantity.value + input!;
          print(tmp);
          part.getQuantity.value = tmp; // Set the new value directly
          print("New quantity: ${part.getQuantity.value}");
        }
      }
    });
  }
}
