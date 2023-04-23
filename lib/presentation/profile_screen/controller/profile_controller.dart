import 'package:events/core/app_export.dart';
import 'package:events/presentation/profile_screen/models/profile_model.dart';
import 'package:flutter/material.dart';

class ProfileController extends GetxController {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobilenumberController = TextEditingController();

  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  RxBool checkbox = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameController.dispose();
    emailController.dispose();
    mobilenumberController.dispose();
  }
}
