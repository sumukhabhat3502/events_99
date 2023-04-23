import 'package:events/core/app_export.dart';
import 'package:events/presentation/app_icon_screen/models/app_icon_model.dart';

class AppIconController extends GetxController {
  Rx<AppIconModel> appIconModelObj = AppIconModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
