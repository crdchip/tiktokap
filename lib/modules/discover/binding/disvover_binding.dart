import 'package:get/instance_manager.dart';
import 'package:tiktokap/modules/discover/controller/discover_controller.dart';
import 'package:tiktokap/modules/home/controller/home_controller.dart';

class DiscoverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscoverController>(() => DiscoverController());
  }
}
