# IKEA_SPARE_TEK830
IKEA Capstone project at Chalmers University
Requirements
Before running this project, ensure you have the following:

Flutter SDK: You can install Flutter by following the instructions on the official Flutter website.
Ensure that Flutter is added to your system PATH.
Dart SDK: Dart is included with Flutter, so no separate installation is required. You can verify the Dart SDK installation with:

dart --version

Android Studio/Xcode: For Android and iOS development, you'll need Android Studio and/or Xcode for building and running the app on emulators or physical devices.
VS Code/Android Studio: A code editor with Flutter and Dart support (VS Code with the Flutter plugin or Android Studio).
Installation
Clone the repository:
git clone [https://github.com/your-username/your-project.git](https://github.com/McQueenMG/IKEA_SPARE_TEK830.git)
cd ikea_spare
Install dependencies: Flutter uses a package manager to handle dependencies. Run the following command to install all necessary packages listed in pubspec.yaml:

flutter pub get

Running the Project
To run the Flutter app locally on an emulator or physical device:

Ensure you have a connected device or emulator: You can check connected devices with:

flutter devices

Run the app: 
To run the app on your device or emulator, execute:

flutter run

This will build the project and deploy it to the selected device.

Build for release (Optional): To build an APK for Android or IPA for iOS, use:

flutter build apk --release    # For Android
flutter build ios --release    # For iOS (requires macOS)

Testing
Run unit tests: Flutter includes a test framework for unit and widget tests. To run all tests, use:

flutter test
