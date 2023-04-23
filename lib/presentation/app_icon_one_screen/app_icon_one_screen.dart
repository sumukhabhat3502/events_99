import 'controller/app_icon_one_controller.dart';
import 'package:events/core/app_export.dart';
import 'package:flutter/material.dart';

class AppIconOneScreen extends GetWidget<AppIconOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueGray50,
        body: Container(
          width: getHorizontalSize(
            512,
          ),
          padding: getPadding(
            top: 55,
            bottom: 55,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgSubtract,
                height: getVerticalSize(
                  402,
                ),
                width: getHorizontalSize(
                  353,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
