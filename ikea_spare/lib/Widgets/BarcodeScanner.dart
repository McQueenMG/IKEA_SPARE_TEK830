import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart'; 

class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  @override
  void initState() {
    super.initState();
    // Delaying to ensure the widget tree is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startBarcodeScan();
    });
  }

  Future<void> _startBarcodeScan() async {
    // Open the barcode scanner and await result
    var scanResult = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SimpleBarcodeScannerPage(), // Use the scanner from simple_barcode_scanner
      ),
    );

    // After scan is done, return the result to previous screen
    if (mounted) {
      Navigator.pop(context, scanResult);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back when back button is pressed
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text('Scanning will start automatically...'),
      ),
    );
  }
}