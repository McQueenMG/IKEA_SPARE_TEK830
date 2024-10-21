import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart'; // For platform checks
import 'package:zxing/zxing.dart'; // A simple ZXing wrapper for barcode scanning

class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  bool isCameraInitialized = false;
  String barcodeResult = 'No barcode scanned';

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  // Initialize camera depending on platform
  Future<void> _initializeCamera() async {
    try {
      // Check if we're on macOS or Windows
      if (!kIsWeb && (defaultTargetPlatform == TargetPlatform.windows || defaultTargetPlatform == TargetPlatform.macOS)) {
        cameras = await availableCameras();
        if (cameras!.isNotEmpty) {
          _controller = CameraController(cameras![0], ResolutionPreset.medium);
          await _controller!.initialize();
          setState(() {
            isCameraInitialized = true;
          });
        }
      }
    } catch (e) {
      print('Error initializing camera: $e');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  // Capturing a frame and scanning for a barcode
  Future<void> _scanBarcode() async {
    if (_controller != null && _controller!.value.isInitialized) {
      // Capture a frame from the camera
      final image = await _controller!.takePicture();
      
      // Process the image and scan for barcodes
      final barcodeScanner = ZXing();  // Using ZXing wrapper for simplicity
      final barcode = barcodeScanner.decodeImagePath(image.path);

      if (barcode != null && barcode.isNotEmpty) {
        setState(() {
          barcodeResult = barcode;
          Navigator.pop(context, barcode);
        });
      } else {
        setState(() {
          barcodeResult = 'No barcode found';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
      ),
      body: isCameraInitialized
          ? Stack(
              children: [
                CameraPreview(_controller!),  // Display camera feed
                Positioned(
                  bottom: 20,
                  left: 20,
                  child: ElevatedButton(
                    onPressed: _scanBarcode,
                    child: Text('Capture & Scan'),
                  ),
                ),
              ],
            )
          : Center(child: CircularProgressIndicator()),  // Show loading until camera is initialized
    );
  }
}