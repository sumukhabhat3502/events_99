import 'package:events/core/app_export.dart';
import 'package:events/presentation/filter_screen/models/filter_model.dart';
import 'package:events/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class FilterController extends GetxController {
  TextEditingController groupthirtythreController = TextEditingController();

  TextEditingController groupthirtyfiveController = TextEditingController();

  TextEditingController groupthirtyseveController = TextEditingController();

  TextEditingController groupthirtynineController = TextEditingController();

  TextEditingController groupfortyoneController = TextEditingController();

  TextEditingController groupfortythreeController = TextEditingController();

  Rx<FilterModel> filterModelObj = FilterModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupthirtythreController.dispose();
    groupthirtyfiveController.dispose();
    groupthirtyseveController.dispose();
    groupthirtynineController.dispose();
    groupfortyoneController.dispose();
    groupfortythreeController.dispose();
  }
}
