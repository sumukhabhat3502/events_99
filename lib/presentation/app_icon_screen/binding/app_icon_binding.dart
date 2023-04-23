import '../controller/app_icon_controller.dart';
import 'package:get/get.dart';

class AppIconBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppIconController());
  }
}
