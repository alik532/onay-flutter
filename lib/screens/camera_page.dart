import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../styles/app_colors.dart' as app_colors;

class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraPage({super.key, required this.cameras});
  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;

  Future initCamera(CameraDescription cameraDescription) async {
    // create a CameraController
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    // Next, initialize the controller. This returns a Future.
    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }

  @override
  void initState() {
    super.initState();
    // initialize the rear camera
    initCamera(widget.cameras[0]);
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: app_colors.primaryLight,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back,
                )),
            title: const Text("Scan QR Code"),
          ),
          body: Center(
              child: _cameraController.value.isInitialized
                  ? CameraPreview(_cameraController)
                  : const Center(child: CircularProgressIndicator()))),
    );
  }
}
