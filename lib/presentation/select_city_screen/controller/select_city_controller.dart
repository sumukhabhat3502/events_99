import 'package:events/core/app_export.dart';
import 'package:events/presentation/select_city_screen/models/select_city_model.dart';
import 'package:flutter/material.dart';

class SelectCityController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<SelectCityModel> selectCityModelObj = SelectCityModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
