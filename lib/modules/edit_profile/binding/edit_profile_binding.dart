import 'package:get/get.dart';
import 'package:tiktokap/modules/edit_profile/controller/edit_profile_controller.dart';
import 'package:tiktokap/modules/profiles/controller/profile_controller.dart';

class EditProfileBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<EditProfileController>(() => EditProfileController());
  }
}
