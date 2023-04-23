import 'controller/sign_in_controller.dart';
import 'package:events/core/app_export.dart';
import 'package:events/core/utils/validation_functions.dart';
import 'package:events/widgets/custom_button.dart';
import 'package:events/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:events/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 45, right: 16, bottom: 45),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgFrame86,
                              height: getVerticalSize(227),
                              width: getHorizontalSize(328),
                              radius:
                                  BorderRadius.circular(getHorizontalSize(32)),
                              margin: getMargin(top: 7)),
                          Padding(
                              padding: getPadding(top: 32),
                              child: Text("msg_welcome_to_99_events".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSauceOneBold24)),
                          Container(
                              width: getHorizontalSize(320),
                              margin: getMargin(left: 4, top: 17, right: 3),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtOpenSauceOneRegular12)),
                          GestureDetector(
                              onTap: () {
                                onTapRowgoogle();
                              },
                              child: Container(
                                  margin: getMargin(top: 39),
                                  padding: getPadding(all: 16),
                                  decoration: AppDecoration.outlineBlack90099
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder28),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGoogle,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(
                                            left: 50, top: 4, bottom: 1),
                                        child: Text(
                                            "msg_continue_with_google".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular14))
                                  ]))),
                          Padding(
                              padding: getPadding(top: 20),
                              child: Text("msg_or_continue_with".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOpenSauceOneMedium12)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "lbl_enter_email_id".tr,
                              margin: getMargin(top: 20),
                              variant: TextFormFieldVariant.OutlineBlack90099,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              text: "lbl_continue".tr,
                              margin: getMargin(top: 16),
                              onTap: onTapContinue),
                          Container(
                              width: getHorizontalSize(324),
                              margin: getMargin(top: 32),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_by_continuing_you2".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "msg_terms_of_service".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline)),
                                    TextSpan(
                                        text: "lbl".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: "lbl_user_agreement".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline)),
                                    TextSpan(
                                        text: "lbl_and".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "lbl_privacy_policy".tr,
                                        style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(12),
                                            fontFamily: 'Open Sauce One',
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.underline))
                                  ]),
                                  textAlign: TextAlign.center))
                        ])))));
  }

  onTapRowgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.otpScreen);
  }
}
