import 'package:flutter/material.dart';
import 'package:camera/camera.dart';  // Import Camera package
import 'package:flutter_barcode_sdk/dynamsoft_barcode.dart';
import 'package:flutter_barcode_sdk/flutter_barcode_sdk.dart';  // Import the Barcode SDK


class BarcodeScanner extends StatefulWidget {
  @override
  _BarcodeScannerState createState() => _BarcodeScannerState();
}

class _BarcodeScannerState extends State<BarcodeScanner> {
  CameraController? _controller;
  List<CameraDescription>? cameras;
  bool isCameraInitialized = false;
  bool isCapturing = false; // Flag to indicate if capture is in progress

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    try {
      cameras = await availableCameras();
      if (cameras!.isNotEmpty) {
        _controller = CameraController(cameras![0], ResolutionPreset.medium);
        await _controller!.initialize();
        setState(() {
          isCameraInitialized = true;
        });
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

  Future<void> _scanBarcode() async {
    if (isCapturing) return; // Prevent double capture
    if (_controller == null || !_controller!.value.isInitialized) {
      print('Camera is not initialized');
      return;
    }

    try {
      setState(() {
        isCapturing = true; // Start capture
      });

      // Capture a frame from the camera
      final image = await _controller!.takePicture();

      // Initialize the barcode SDK
      FlutterBarcodeSdk barcodeSdk = FlutterBarcodeSdk();
      List<BarcodeResult> barcodes = await barcodeSdk.decodeFile(image.path);

      if (barcodes.isNotEmpty) {
        String barcodeResult = barcodes.first.text;  // Extract the barcode string
        Navigator.pop(context, barcodeResult);  // Return the barcode result
      } else {
        Navigator.pop(context, 'No barcode found'); // Return no result found
      }
    } catch (e) {
      print('Error scanning barcode: $e');
    } finally {
      setState(() {
        isCapturing = false; // Reset capture state
      });
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
                Transform.scale(
                  scaleX: -1, // Flip horizontally
                  child: CameraPreview(_controller!), // Display camera feed
                ),
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
          : Center(child: CircularProgressIndicator()), // Show loading until camera is initialized
    );
  }
}