import 'package:camera/camera.dart';
import 'package:get/get.dart';

import '../main.dart';

class ControllerCameras extends GetxController{
  late CameraController controller;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  void onInit() {

    controller = CameraController(cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {

    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
          // Handle access errors here.
            break;
          default:
          // Handle other errors here.
            break;
        }
      }
    });
    super.onInit();
  }


}