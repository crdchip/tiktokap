import 'package:get/instance_manager.dart';
import 'package:tiktokap/modules/dash_boar/controller/dash_boar_controller.dart';

class DashBoarBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DashBoarController>(() => DashBoarController());
  }
}
