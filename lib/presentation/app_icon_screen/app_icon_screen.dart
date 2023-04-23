import 'controller/app_icon_controller.dart';
import 'package:events/core/app_export.dart';
import 'package:flutter/material.dart';

class AppIconScreen extends GetWidget<AppIconController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0,
                0,
              ),
              end: Alignment(
                1,
                1,
              ),
              colors: [
                ColorConstant.deepPurpleA200,
                ColorConstant.purple900,
              ],
            ),
          ),
          child: Container(
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
                  svgPath: ImageConstant.imgSubtractBlueGray50,
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
      ),
    );
  }
}
