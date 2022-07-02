import 'package:get/get.dart';

import 'package:tiktokap/modules/message/controller/messager_controller.dart';

class MessagerBinding extends Bindings {
  void dependencies() {
    Get.lazyPut<MessagerController>(() => MessagerController());
  }
}
