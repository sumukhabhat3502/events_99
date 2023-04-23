import 'package:events/core/app_export.dart';
import 'package:events/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.offNamed(AppRoutes.homeContainerScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
