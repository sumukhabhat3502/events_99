import '../controller/app_icon_one_controller.dart';
import 'package:get/get.dart';

class AppIconOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppIconOneController());
  }
}
