import 'package:get/instance_manager.dart';
import 'package:tiktokap/modules/settings/controller/setting_controller.dart';

class SettingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
