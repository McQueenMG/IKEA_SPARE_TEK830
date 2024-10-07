import 'package:flutter/material.dart';

class ScannedPart extends StatelessWidget {
  const ScannedPart({super.key, required this.name, required this.image, required this.quantity});

  final String name;
  final String image;
  final int quantity;

  //@override
  //State<ScannedPart> createState() => ScannedPartState();

  @override
  Widget build(BuildContext context) {
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
              ElevatedButton(
                onPressed: go,
                child: const Text("Remove")
              ), 
              ElevatedButton(
                onPressed: go,
                child: const Text("Add")
              ), 
              ],
          ),
        ],
      ),
    );
  }

  void go() {
    
  }
}
