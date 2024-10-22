import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ikea_spare/Backend/Parts.dart';
import 'package:ikea_spare/Backend/SparePart.dart';
import 'package:ikea_spare/Backend/CurrentScannedPart.dart';

class ScannedPart extends StatefulWidget {
  const ScannedPart({super.key});

  @override
  State<ScannedPart> createState() => _ScannedPartState();
}

class _ScannedPartState extends State<ScannedPart> {
  int input = 0;
  Parts partsInstance = Parts();

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: CurrentScannedPart()
          .getPartId(), // Listen for changes in the scanned part ID
      builder: (context, partid, child) {
        SparePart part = partsInstance.getSparePartFromID(partid);

        return LayoutBuilder(
          builder: (context, constraints) {
            final double width = constraints.maxWidth;
            final double height = constraints.maxHeight;

            return SizedBox(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: const Color.fromARGB(255, 131, 181, 223),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * 0.3,
                      width: width * 0.95,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50]!,
                      ),
                      child: Row(
                        children: [
                          ConstrainedBox(
                            constraints:
                                BoxConstraints.tightFor(width: width * 0.4),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                part.getImageUrl,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints.tightFor(width: width * 0.5),
                            child: Padding(
                              padding: EdgeInsets.all(height * 0.025),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    part.getName,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    part.getId,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.inventory_2,
                                        color: Colors.black,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.0125,
                                            bottom: height * 0.0125),
                                        child: Text(
                                          "Quantity: ${part.getQuantity.value}",
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.place_rounded,
                                        color: Colors.black,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: height * 0.0125,
                                            bottom: height * 0.0125),
                                        child: Text(
                                          "Location: ${part.getLocation}",
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: width * 0.025)),
                    SizedBox(
                      width: width * 0.9,
                      child: const Text(
                        "Description:",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: width * 0.9,
                      height: height * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[50]!,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          part.getDescription,
                          style: const TextStyle(fontSize: 18),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 15)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            input--;
                            textController.text = "$input";
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                          ),
                          child: const Text("-",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ConstrainedBox(
                            constraints: const BoxConstraints.tightFor(
                                width: 100, height: 60),
                            child: Center(
                              child: TextField(
                                textAlign: TextAlign.center,
                                controller: textController,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 5),
                                  labelText: 'Quantity',
                                  labelStyle: TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'^-?\d*$')),
                                ],
                                onChanged: (value) {
                                  if (int.tryParse(value) == null) {
                                    input = 0;
                                    return;
                                  }

                                  input = int.parse(value);
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            input++;
                            textController.text = "$input";
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                          ),
                          child: const Text("+",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            changeQuantity(part);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: const Text("Commit",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  void changeQuantity(SparePart part) {
    setState(() {
      int newQuantity = part.getQuantity.value + input;
      part.setQuantity(newQuantity);
    });
  }
}
