import '../show_screen/widgets/show_item_widget.dart';
import 'controller/show_controller.dart';
import 'models/show_item_model.dart';
import 'package:events/core/app_export.dart';
import 'package:events/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:events/widgets/app_bar/custom_app_bar.dart';
import 'package:events/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ShowScreen extends GetWidget<ShowController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(480),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage2480x360,
                                            height: getVerticalSize(480),
                                            width: getHorizontalSize(360),
                                            alignment: Alignment.center),
                                        CustomAppBar(
                                            height: getVerticalSize(117),
                                            leadingWidth: 64,
                                            leading: AppbarIconbutton2(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                margin: getMargin(
                                                    left: 16,
                                                    top: 53,
                                                    bottom: 16),
                                                onTap: onTapArrowleft4),
                                            actions: [
                                              AppbarIconbutton2(
                                                  svgPath:
                                                      ImageConstant.imgShare,
                                                  margin: getMargin(
                                                      left: 16,
                                                      top: 53,
                                                      right: 16,
                                                      bottom: 16))
                                            ])
                                      ])),
                              Container(
                                  width: double.maxFinite,
                                  child: Container(
                                      width: double.maxFinite,
                                      padding: getPadding(
                                          left: 16,
                                          top: 15,
                                          right: 16,
                                          bottom: 15),
                                      decoration: AppDecoration.fillBluegray50,
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text(
                                                    "msg_zakir_khan_haq".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtOpenSauceOneSemiBold20)),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCalendar,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8, top: 1),
                                                      child: Text(
                                                          "msg_fri_10_feb_2023"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSauceOneRegular14Black90099))
                                                ])),
                                            Padding(
                                                padding: getPadding(top: 8),
                                                child: Row(children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height: getSize(20),
                                                      width: getSize(20)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8, top: 2),
                                                      child: Text(
                                                          "msg_leela_palace_bengaluru"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtOpenSauceOneRegular14Black90099))
                                                ]))
                                          ]))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 8),
                                      child: Divider(
                                          height: getVerticalSize(1),
                                          thickness: getVerticalSize(1),
                                          color: ColorConstant.black90033,
                                          indent: getHorizontalSize(16),
                                          endIndent: getHorizontalSize(16)))),
                              Padding(
                                  padding: getPadding(left: 16, top: 23),
                                  child: Text("msg_more_information".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCategory,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(bottom: 1)),
                                    Padding(
                                        padding: getPadding(left: 8, top: 2),
                                        child: Text("lbl_comedy_show".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular12Black90099))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 6),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgUserBlack900,
                                        height: getSize(16),
                                        width: getSize(16)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("lbl_1_hr_20mins".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular12Black90099))
                                  ])),
                              Padding(
                                  padding: getPadding(left: 16, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCut,
                                        height: getSize(16),
                                        width: getSize(16)),
                                    Padding(
                                        padding: getPadding(left: 8),
                                        child: Text("lbl_hindi".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneRegular12Black90099))
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
                                  child: Text("lbl_artist".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Padding(
                                  padding: getPadding(left: 16, top: 12),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage4,
                                        height: getSize(64),
                                        width: getSize(64),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(32))),
                                    Padding(
                                        padding: getPadding(
                                            left: 12, top: 21, bottom: 22),
                                        child: Text("lbl_zakir_khan".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOpenSauceOneMedium16))
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
                                  padding: getPadding(left: 16, top: 25),
                                  child: Text("lbl_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(318),
                                      margin: getMargin(
                                          left: 16, top: 7, right: 25),
                                      child: Text("msg_ligula_massa_laoreet".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtOpenSauceOneRegular12))),
                              Padding(
                                  padding: getPadding(left: 16, top: 7),
                                  child: Text("lbl_read_more".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtOpenSauceOneMedium12DeeppurpleA200)),
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
                                  padding: getPadding(left: 16, top: 41),
                                  child: Text("lbl_location_on_map".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOpenSauceOneMedium16)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(top: 6),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                      child: Container(
                                          height: getVerticalSize(184),
                                          width: getHorizontalSize(328),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder16),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgMapsiclemap,
                                                    height:
                                                        getVerticalSize(184),
                                                    width:
                                                        getHorizontalSize(328),
                                                    radius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                16)),
                                                    alignment:
                                                        Alignment.center),
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgLocationon,
                                                    height: getSize(40),
                                                    width: getSize(40),
                                                    alignment: Alignment.center)
                                              ])))),
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
                                  padding: getPadding(left: 15, top: 25),
                                  child: Text("msg_you_may_also_like".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtOpenSauceOneSemiBold20)),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(313),
                                      child: Obx(() => ListView.separated(
                                          padding:
                                              getPadding(left: 16, top: 21),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(16));
                                          },
                                          itemCount: controller.showModelObj
                                              .value.showItemList.length,
                                          itemBuilder: (context, index) {
                                            ShowItemModel model = controller
                                                .showModelObj
                                                .value
                                                .showItemList[index];
                                            return ShowItemWidget(model);
                                          }))))
                            ])))),
            bottomNavigationBar: Container(
                width: double.maxFinite,
                margin: getMargin(bottom: 16),
                padding: getPadding(left: 16, top: 12, right: 16, bottom: 12),
                decoration: AppDecoration.outlineGray300,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: getPadding(top: 18, bottom: 17),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_399".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(20),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: " ",
                                    style: TextStyle(
                                        color: ColorConstant.black900,
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400)),
                                TextSpan(
                                    text: "lbl_onwards".tr,
                                    style: TextStyle(
                                        color: ColorConstant.black90099,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Open Sauce One',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left)),
                      CustomButton(
                          width: getHorizontalSize(156),
                          text: "lbl_book".tr,
                          onTap: onTapBook)
                    ]))));
  }

  onTapArrowleft4() {
    Get.back();
  }

  onTapBook() {
    Get.toNamed(AppRoutes.bookingScreen);
  }
}
