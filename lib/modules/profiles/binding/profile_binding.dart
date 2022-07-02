import 'package:get/get.dart';
import 'package:tiktokap/modules/profiles/controller/profile_controller.dart';

class ProfileBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
