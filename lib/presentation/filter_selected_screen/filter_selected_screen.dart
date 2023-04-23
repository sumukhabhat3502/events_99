import '../filter_selected_screen/widgets/filter_selected_item_widget.dart';
import 'controller/filter_selected_controller.dart';
import 'models/filter_selected_item_model.dart';
import 'package:events/core/app_export.dart';
import 'package:events/presentation/events_page/events_page.dart';
import 'package:events/presentation/home_page/home_page.dart';
import 'package:events/presentation/profile_one_page/profile_one_page.dart';
import 'package:events/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:events/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:events/widgets/app_bar/appbar_title.dart';
import 'package:events/widgets/app_bar/custom_app_bar.dart';
import 'package:events/widgets/custom_bottom_bar.dart';
import 'package:events/widgets/custom_button.dart';
import 'package:events/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class FilterSelectedScreen extends GetWidget<FilterSelectedController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                height: size.height,
                width: double.maxFinite,
                decoration: AppDecoration.fillBluegray50,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: getPadding(left: 16, top: 207, right: 16),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.filterSelectedModelObj.value
                                  .filterSelectedItemList.length,
                              itemBuilder: (context, index) {
                                FilterSelectedItemModel model = controller
                                    .filterSelectedModelObj
                                    .value
                                    .filterSelectedItemList[index];
                                return FilterSelectedItemWidget(model);
                              })))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 141),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    padding: getPadding(
                                        left: 24,
                                        top: 10,
                                        right: 24,
                                        bottom: 10),
                                    decoration: AppDecoration
                                        .gradientDeeppurpleA200Purple900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder21),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_today".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneMedium14Bluegray50))
                                        ])),
                                CustomButton(
                                    height: getVerticalSize(42),
                                    width: getHorizontalSize(116),
                                    text: "lbl_tomorrow".tr,
                                    margin: getMargin(left: 12),
                                    variant: ButtonVariant.OutlineBlack90099,
                                    shape: ButtonShape.CircleBorder21,
                                    padding: ButtonPadding.PaddingAll12,
                                    fontStyle:
                                        ButtonFontStyle.OpenSauceOneRegular14),
                                Container(
                                    margin: getMargin(left: 12),
                                    padding: getPadding(top: 11, bottom: 11),
                                    decoration: AppDecoration.outlineBlack900991
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder21),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_this_weekend".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtOpenSauceOneRegular14)
                                        ]))
                              ]))),
                  CustomAppBar(
                      height: getVerticalSize(125),
                      leadingWidth: 72,
                      leading: AppbarIconbutton1(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 16, top: 53, bottom: 16),
                          onTap: onTapArrowleft3),
                      title: Padding(
                          padding: getPadding(left: 16, top: 59, bottom: 20),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                AppbarTitle(text: "lbl_comedy_show".tr),
                                AppbarSubtitle2(
                                    text: "msg_bengaluru_5_events".tr,
                                    margin: getMargin(top: 1, right: 5))
                              ])),
                      actions: [
                        AppbarIconbutton1(
                            svgPath: ImageConstant.imgSearchBlack900,
                            margin: getMargin(
                                left: 16, top: 53, right: 16, bottom: 16))
                      ],
                      styleType: Style.bgFillBluegray50cc),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: getMargin(top: 37),
                          padding: getPadding(
                              left: 16, top: 15, right: 16, bottom: 15),
                          decoration: AppDecoration.fillGray300.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL24),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgClose,
                                          height: getVerticalSize(24),
                                          width: getHorizontalSize(32),
                                          onTap: () {
                                            onTapImgClose();
                                          }),
                                      Text("lbl_filter".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSauceOneSemiBold20),
                                      GestureDetector(
                                          onTap: () {
                                            onTapTxtClear();
                                          },
                                          child: Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 4),
                                              child: Text("lbl_clear".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneMedium12RedA700)))
                                    ]),
                                Padding(
                                    padding: getPadding(top: 31),
                                    child: Text("lbl_date".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneMedium16)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 2),
                                              child: Text("lbl_today".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneRegular14Black90099)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCheckcircle,
                                              height: getSize(20),
                                              width: getSize(20))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.black90033)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.grouptwentyfourController,
                                    hintText: "lbl_tomorrow".tr,
                                    margin: getMargin(top: 12)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.grouptwentysixController,
                                    hintText: "msg_day_after_tomorrow".tr,
                                    margin: getMargin(top: 13)),
                                Padding(
                                    padding: getPadding(top: 11),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_select_date".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneRegular14Black90099)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCalendar,
                                              height: getSize(20),
                                              width: getSize(20))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 43),
                                    child: Text("lbl_price".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtOpenSauceOneMedium16)),
                                Padding(
                                    padding: getPadding(top: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_free".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOpenSauceOneRegular14Black90099)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgCheckcircle,
                                              height: getSize(20),
                                              width: getSize(20))
                                        ])),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: ColorConstant.black90033)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.grouptwentyeighController,
                                    hintText: "lbl_1_249".tr,
                                    margin: getMargin(top: 12)),
                                CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller:
                                        controller.groupthirtyController,
                                    hintText: "lbl_250_499".tr,
                                    margin: getMargin(top: 12),
                                    textInputAction: TextInputAction.done),
                                Padding(
                                    padding: getPadding(top: 12),
                                    child: Text("lbl_500_and_above".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtOpenSauceOneRegular14Black90099)),
                                Spacer(),
                                CustomButton(
                                    text: "lbl_apply".tr,
                                    margin: getMargin(bottom: 16))
                              ])))
                ])),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Events:
        return AppRoutes.eventsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOnePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.eventsPage:
        return EventsPage();
      case AppRoutes.profileOnePage:
        return ProfileOnePage();
      default:
        return DefaultWidget();
    }
  }

  onTapArrowleft3() {
    Get.back();
  }

  onTapImgClose() {
    Get.back();
  }

  onTapTxtClear() {
    Get.toNamed(AppRoutes.filterScreen);
  }
}
