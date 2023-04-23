import '../controller/events_controller.dart';
import '../models/events_item_model.dart';
import 'package:events/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget(this.eventsItemModelObj, {this.onTapImgAfricanamerica});

  EventsItemModel eventsItemModelObj;

  var controller = Get.find<EventsController>();

  VoidCallback? onTapImgAfricanamerica;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: ColorConstant.gray300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Container(
        height: getVerticalSize(
          156,
        ),
        width: getHorizontalSize(
          328,
        ),
        decoration: AppDecoration.fillGray300.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAfricanamerica,
              height: getVerticalSize(
                156,
              ),
              width: getHorizontalSize(
                328,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  16,
                ),
              ),
              alignment: Alignment.center,
              onTap: () {
                onTapImgAfricanamerica?.call();
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: getPadding(
                  left: 16,
                  top: 15,
                  right: 16,
                  bottom: 15,
                ),
                decoration: AppDecoration.fillGray300cc,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Obx(
                        () => Text(
                          eventsItemModelObj.typeTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSauceOneMedium16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 4,
                      ),
                      child: Obx(
                        () => Text(
                          eventsItemModelObj.priceTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOpenSauceOneRegular12Black90099,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
