import 'controller/home_page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_image.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_text_form_field.dart';

class HomePageOneScreen extends GetWidget<HomePageOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 43,
          leading: AppbarImage(
            height: getVerticalSize(
              14.00,
            ),
            width: getHorizontalSize(
              19.00,
            ),
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 24,
              top: 21,
              bottom: 21,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgSearchGray900,
              margin: getMargin(
                left: 24,
                top: 16,
                bottom: 16,
              ),
            ),
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 24,
                top: 16,
                right: 24,
                bottom: 16,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 7,
                  right: 24,
                ),
                child: Text(
                  "lbl_g7_truckers".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold32.copyWith(
                    letterSpacing: 0.64,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: getHorizontalSize(
                  295.00,
                ),
                margin: getMargin(
                  left: 24,
                  top: 18,
                  right: 24,
                ),
                child: Text(
                  "msg_g7_provides_a_complete".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratMedium16Gray90090.copyWith(
                    letterSpacing: 0.64,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: getMargin(
                  left: 24,
                  top: 27,
                  right: 24,
                ),
                decoration: AppDecoration.outlineGray9005e.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder13,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 21,
                        bottom: 18,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                              bottom: 3,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgLocation,
                              height: getVerticalSize(
                                16.00,
                              ),
                              width: getHorizontalSize(
                                14.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 16,
                            ),
                            child: Text(
                              "lbl_banglore_india".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold16Gray90090
                                  .copyWith(
                                letterSpacing: 0.32,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                        bottom: 20,
                      ),
                      child: Text(
                        "lbl_change".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratBold14AmberA400.copyWith(
                          letterSpacing: 0.28,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 25,
                  top: 26,
                  right: 25,
                ),
                child: Text(
                  "lbl_our_services".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold14Gray9007e.copyWith(
                    letterSpacing: 1.12,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 16,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: AppDecoration.outlineGray9005f.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 20,
                              right: 22,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSettings48x48,
                              height: getSize(
                                48.00,
                              ),
                              width: getSize(
                                48.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 20,
                              right: 18,
                              bottom: 14,
                            ),
                            child: Text(
                              "lbl_transporters".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold16.copyWith(
                                letterSpacing: 0.32,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 17,
                      ),
                      decoration: AppDecoration.outlineGray9005f1.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 21,
                              top: 20,
                              right: 21,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgComputer,
                              height: getVerticalSize(
                                46.00,
                              ),
                              width: getHorizontalSize(
                                49.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 18,
                              top: 20,
                              right: 18,
                              bottom: 16,
                            ),
                            child: Text(
                              "lbl_live_lorries".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold16.copyWith(
                                letterSpacing: 0.32,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 26,
                  right: 24,
                ),
                child: Text(
                  "lbl_lorries_nearby".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratBold14Gray9007e.copyWith(
                    letterSpacing: 1.12,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 42,
                  right: 24,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgClose,
                  height: getVerticalSize(
                    70.00,
                  ),
                  width: getHorizontalSize(
                    79.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 24,
                  top: 17,
                  right: 24,
                ),
                child: Text(
                  "msg_add_loads_to_get".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratMedium16Gray9006c.copyWith(
                    letterSpacing: 0.64,
                  ),
                ),
              ),
            ),
            CustomTextFormField(
              width: 251,
              focusNode: FocusNode(),
              controller: controller.floatingButtonController,
              hintText: "lbl_attach_lorries".tr,
              margin: getMargin(
                left: 32,
                top: 36,
                right: 32,
                bottom: 5,
              ),
              variant: TextFormFieldVariant.OutlineBlueA7004c,
              fontStyle: TextFormFieldFontStyle.MontserratBold14,
              textInputAction: TextInputAction.done,
              alignment: Alignment.centerRight,
              suffix: Container(
                padding: getPadding(
                  all: 11,
                ),
                margin: getMargin(
                  left: 24,
                  top: 14,
                  right: 14,
                  bottom: 14,
                ),
                decoration: BoxDecoration(
                  color: ColorConstant.whiteA7005f,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      7.00,
                    ),
                  ),
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgPlus,
                ),
              ),
              suffixConstraints: BoxConstraints(
                minWidth: getHorizontalSize(
                  10.00,
                ),
                minHeight: getVerticalSize(
                  10.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
