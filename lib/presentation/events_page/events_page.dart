import '../events_page/widgets/events_item_widget.dart';
import 'controller/events_controller.dart';
import 'models/events_item_model.dart';
import 'models/events_model.dart';
import 'package:events/core/app_export.dart';
import 'package:events/widgets/app_bar/appbar_iconbutton.dart';
import 'package:events/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:events/widgets/app_bar/appbar_title.dart';
import 'package:events/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class EventsPage extends StatelessWidget {
  EventsController controller = Get.put(EventsController(EventsModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(125),
                title: Padding(
                    padding: getPadding(left: 16, top: 57, bottom: 20),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarTitle(
                              text: "lbl_all_events".tr,
                              margin: getMargin(right: 51)),
                          AppbarSubtitle2(
                              text: "msg_bengaluru_26_events".tr,
                              margin: getMargin(top: 3))
                        ])),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 53, right: 16, bottom: 24))
                ],
                styleType: Style.bgFillBluegray50cc),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 16, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Obx(() => ListView.separated(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: controller.eventsModelObj.value
                                      .eventsItemList.length,
                                  itemBuilder: (context, index) {
                                    EventsItemModel model = controller
                                        .eventsModelObj
                                        .value
                                        .eventsItemList[index];
                                    return EventsItemWidget(model,
                                        onTapImgAfricanamerica:
                                            onTapImgAfricanamerica);
                                  })),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.gray300,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                            child: Container(
                                                height: getSize(156),
                                                width: getSize(156),
                                                decoration: AppDecoration
                                                    .fillGray300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder16),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgFemalemimeart,
                                                          height: getSize(156),
                                                          width: getSize(156),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      16)),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 15,
                                                                      right: 16,
                                                                      bottom:
                                                                          15),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillGray300cc,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                2),
                                                                        child: Text(
                                                                            "lbl_play"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSauceOneMedium16)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                4),
                                                                        child: Text(
                                                                            "msg_bengaluru_1_event"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSauceOneRegular12Black90099))
                                                                  ])))
                                                    ]))),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.gray300,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                            child: Container(
                                                height: getSize(156),
                                                width: getSize(156),
                                                decoration: AppDecoration
                                                    .fillGray300
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder16),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgBackviewcrowd,
                                                          height: getSize(156),
                                                          width: getSize(156),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      16)),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                              padding:
                                                                  getPadding(
                                                                      left: 16,
                                                                      top: 15,
                                                                      right: 16,
                                                                      bottom:
                                                                          15),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillGray300cc,
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_others"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOpenSauceOneMedium16),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                5),
                                                                        child: Text(
                                                                            "msg_bengaluru_8_events"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtOpenSauceOneRegular12Black90099))
                                                                  ])))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapImgAfricanamerica() {
    Get.toNamed(AppRoutes.categoryScreen);
  }
}
