import 'controller/search_result_controller.dart';
import 'package:events/core/app_export.dart';
import 'package:events/widgets/custom_icon_button.dart';
import 'package:events/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchResultScreen extends GetWidget<SearchResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.blueGray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 53, bottom: 53),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 48,
                          width: 48,
                          margin: getMargin(left: 16),
                          variant: IconButtonVariant.FillGray300,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Align(
                          alignment: Alignment.center,
                          child: CustomSearchView(
                              focusNode: FocusNode(),
                              controller: controller.searchController,
                              hintText: "lbl_facilisi".tr,
                              margin: getMargin(left: 16, top: 16, right: 16),
                              padding: SearchViewPadding.PaddingT18,
                              fontStyle:
                                  SearchViewFontStyle.OpenSauceOneRegular16,
                              alignment: Alignment.center,
                              prefix: Container(
                                  margin: getMargin(
                                      left: 16, top: 16, right: 12, bottom: 16),
                                  child: CustomImageView(
                                      svgPath:
                                          ImageConstant.imgSearchBlack900)),
                              prefixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 16, right: 16, bottom: 16),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgClose)),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(56)))),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: getPadding(left: 16, top: 40),
                          child: IntrinsicWidth(
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                Container(
                                    width: getHorizontalSize(148),
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_comedy_show".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneRegular14)),
                                Container(
                                    width: getHorizontalSize(130),
                                    margin: getMargin(left: 12),
                                    padding: getPadding(
                                        left: 24,
                                        top: 11,
                                        right: 24,
                                        bottom: 11),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_music_show".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneRegular14)),
                                Container(
                                    width: getHorizontalSize(114),
                                    margin: getMargin(left: 12),
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_open_mic".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneRegular14)),
                                Spacer(),
                                Container(
                                    width: getHorizontalSize(117),
                                    padding: getPadding(
                                        left: 24,
                                        top: 12,
                                        right: 24,
                                        bottom: 12),
                                    decoration: AppDecoration
                                        .txtOutlineBlack90099
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtCircleBorder21),
                                    child: Text("lbl_adventure".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneRegular14))
                              ]))),
                      Padding(
                          padding: getPadding(left: 16, top: 39),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMailBlack900,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("msg_facilisi_arcu_non".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.black90033,
                                  indent: getHorizontalSize(16),
                                  endIndent: getHorizontalSize(16)))),
                      Padding(
                          padding: getPadding(left: 16, top: 23),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgComputerBlack90020x20,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("msg_facilisi_arcu_non".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.black90033,
                                  indent: getHorizontalSize(16),
                                  endIndent: getHorizontalSize(16)))),
                      Padding(
                          padding: getPadding(left: 16, top: 23),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgMusicBlack900,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("msg_facilisi_arcu_non".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 24),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.black90033,
                                  indent: getHorizontalSize(16),
                                  endIndent: getHorizontalSize(16)))),
                      Padding(
                          padding: getPadding(left: 16, top: 23, bottom: 5),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgSearch,
                                height: getSize(20),
                                width: getSize(20)),
                            Padding(
                                padding: getPadding(left: 12),
                                child: Text("msg_facilisi_arcu_non".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOpenSauceOneRegular16))
                          ]))
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }
}
