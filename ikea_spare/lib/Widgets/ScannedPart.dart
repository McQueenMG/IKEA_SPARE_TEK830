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

    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Color.fromARGB(255, 131, 181, 223),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: width*0.37,
              height: height / 8,
              child: ListCard(part: parts[1]),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Container(
              width: width*0.37,
              height: height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue[50],
              ),
              child: Center(
                child: Text(
                  'Description: ${parts[1].getDescription}',
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,  
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      removeQuantity(
                          parts, parts[1].getId);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text("Remove", style: TextStyle(fontSize: 12, color: Colors.black), textAlign: TextAlign.center),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,
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
                            labelStyle: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            input = int.tryParse(value);
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
                          parts, parts[1].getId);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text("Add", style: TextStyle(fontSize: 12, color: Colors.black), textAlign: TextAlign.center),
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
          if (input == null) {
            return;
          }
          int tmp = part.getQuantity.value - input!;
          if (tmp < 0) {
            tmp = 0;
          }
          part.getQuantity.value = tmp;
        }
      }
    });
  }
  void addQuantity(List<SparePart> parts, String id) {
    setState(() {
      for (var part in parts) {
        if (part.getId == id) {
          if (input == null) {
            return;
          }
          int tmp = part.getQuantity.value + input!;
          if (tmp < 0) {
            tmp = 0;
          }
          part.getQuantity.value = tmp;
        }
      }
    });
  }
}
