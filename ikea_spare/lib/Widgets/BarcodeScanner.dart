import 'package:flutter/material.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart'; // Import the package

// Barcode Scanner Widget using simple_barcode_scanner
class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Open the barcode scanner and await result
            var scanResult = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SimpleBarcodeScannerPage(), // Use the scanner from simple_barcode_scanner
              ),
            );

            // After scan is done, return the result to previous screen
            Navigator.pop(context, scanResult);
          },
          child: Text('Start Scanning'),
        ),
      ),
    );
  }
}