import 'package:get/instance_manager.dart';
import 'package:tiktokap/modules/find_friend/controller/find_friend_controller.dart';

class FindFriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FindFriendController>(() => FindFriendController());
  }
}
