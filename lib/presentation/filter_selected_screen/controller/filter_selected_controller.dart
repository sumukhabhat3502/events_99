import 'package:events/core/app_export.dart';
import 'package:events/presentation/filter_selected_screen/models/filter_selected_model.dart';
import 'package:events/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FilterSelectedController extends GetxController {
  TextEditingController grouptwentyfourController = TextEditingController();

  TextEditingController grouptwentysixController = TextEditingController();

  TextEditingController grouptwentyeighController = TextEditingController();

  TextEditingController groupthirtyController = TextEditingController();

  Rx<FilterSelectedModel> filterSelectedModelObj = FilterSelectedModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    grouptwentyfourController.dispose();
    grouptwentysixController.dispose();
    grouptwentyeighController.dispose();
    groupthirtyController.dispose();
  }
}
