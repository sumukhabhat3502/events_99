import '../category_screen/widgets/list_item_widget.dart';
import '../category_screen/widgets/listshare_item_widget.dart';
import 'controller/category_controller.dart';
import 'models/list_item_model.dart';
import 'models/listshare_item_model.dart';
import 'package:events/core/app_export.dart';
import 'package:events/presentation/events_page/events_page.dart';
import 'package:events/presentation/home_page/home_page.dart';
import 'package:events/presentation/profile_one_page/profile_one_page.dart';
import 'package:events/widgets/app_bar/appbar_iconbutton.dart';
import 'package:events/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:events/widgets/app_bar/appbar_title.dart';
import 'package:events/widgets/app_bar/custom_app_bar.dart';
import 'package:events/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends GetWidget<CategoryController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueGray50,
            appBar: CustomAppBar(
                height: getVerticalSize(125),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 57, bottom: 20),
                    onTap: onTapArrowleft1),
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
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgSearchBlack900,
                      margin:
                          getMargin(left: 16, top: 57, right: 16, bottom: 20))
                ],
                styleType: Style.bgFillBluegray50cc),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 16, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: getVerticalSize(42),
                                  child: Obx(() => ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(12));
                                      },
                                      itemCount: controller.categoryModelObj
                                          .value.listItemList.length,
                                      itemBuilder: (context, index) {
                                        ListItemModel model = controller
                                            .categoryModelObj
                                            .value
                                            .listItemList[index];
                                        return ListItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 24, right: 16),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16));
                                      },
                                      itemCount: controller.categoryModelObj
                                          .value.listshareItemList.length,
                                      itemBuilder: (context, index) {
                                        ListshareItemModel model = controller
                                            .categoryModelObj
                                            .value
                                            .listshareItemList[index];
                                        return ListshareItemWidget(model,
                                            onTapColumnshare: onTapColumnshare);
                                      })))
                            ])))),
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

  onTapColumnshare() {
    Get.toNamed(AppRoutes.showScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
