import 'package:events/core/app_export.dart';
import 'package:events/presentation/show_screen/models/show_model.dart';

class ShowController extends GetxController {
  Rx<ShowModel> showModelObj = ShowModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
