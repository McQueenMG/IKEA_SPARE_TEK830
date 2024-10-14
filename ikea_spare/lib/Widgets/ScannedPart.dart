import 'package:flutter/material.dart';

class ScannedPart extends StatelessWidget {

  const ScannedPart({super.key, required this.name, required this.image, required this.quantity});

  final String name;
  final String image;
  final int quantity;
  static int tmp=0;


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
              SizedBox(
               height: 40,
               width: 100,
               child:ElevatedButton(
                onPressed: decrease,
                child: const Text("Remove"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
                ),
              ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
                ),
                child:SizedBox(
                width: 40,
                height: 40,
                child:Center(
                  child:Card(
                    color: Colors.blue,
                    child:Text(tmp.toString()),
                  )
                )
              ),
              ),
                SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: 100,
                child:ElevatedButton(  
                onPressed: increase,
                child: const Text("Add"),
                  style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ), ),
                ),

              ],
          ),
        ],
      ),
    );
  }

  void increase() {
    tmp++;
  }
    void decrease() {
    tmp--;
  }
  void getQuantity(){
    tmp = quantity;

  }
}
