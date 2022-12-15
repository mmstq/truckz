import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_image.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_text_form_field.dart';

class HomePageScreen extends GetWidget<HomePageController> {
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
              onTap: (){},
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
        body: SingleChildScrollView(
          child: Padding(
            padding: getPadding(
              left: 24,
              top: 7,
              right: 24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
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
                Container(
                  width: getHorizontalSize(
                    295.00,
                  ),
                  margin: getMargin(
                    top: 18,
                    right: 10,
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
                Container(
                  margin: getMargin(
                    top: 27,
                  ),
                  decoration: AppDecoration.outlineGray9005e.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder13,
                    border: Border.all(color: Colors.grey.shade200, width: 2)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 24,
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
                          right: 24,
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
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 26,
                    right: 10,
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
                Padding(
                  padding: getPadding(
                    top: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                svgPath: ImageConstant.imgSettings,
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
                                style:
                                    AppStyle.txtMontserratSemiBold16.copyWith(
                                  letterSpacing: 0.32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
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
                                style:
                                    AppStyle.txtMontserratSemiBold16.copyWith(
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
                Padding(
                  padding: getPadding(
                    top: 26,
                    right: 10,
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
                Container(
                  height: getVerticalSize(
                    443.00,
                  ),
                  width: getHorizontalSize(
                    327.00,
                  ),
                  margin: getMargin(
                    top: 16,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: getMargin(
                            bottom: 10,
                          ),
                          decoration: AppDecoration.outlineGray9000f.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder17,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 18,
                                  bottom: 122,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgAirplane,
                                  height: getSize(
                                    40.00,
                                  ),
                                  width: getSize(
                                    40.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 18,
                                  right: 20,
                                  bottom: 14,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        231.00,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "lbl_truck_required".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold14Gray90090
                                                .copyWith(
                                              letterSpacing: 0.56,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 1,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgFavorite,
                                              height: getVerticalSize(
                                                16.00,
                                              ),
                                              width: getHorizontalSize(
                                                18.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        215.00,
                                      ),
                                      margin: getMargin(
                                        top: 12,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "msg_banglore_electronic".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold16Gray900a2
                                            .copyWith(
                                          letterSpacing: 0.64,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 13,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "msg_20_tonnes_steel".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratMedium14
                                            .copyWith(
                                          letterSpacing: 0.56,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        231.00,
                                      ),
                                      margin: getMargin(
                                        top: 11,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: getVerticalSize(
                                              32.00,
                                            ),
                                            width: getHorizontalSize(
                                              92.00,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      right: 10,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          16.00,
                                                        ),
                                                      ),
                                                      child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage,
                                                        height: getSize(
                                                          32.00,
                                                        ),
                                                        width: getSize(
                                                          32.00,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    margin: getMargin(
                                                      left: 20,
                                                      right: 20,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlineWhiteA700
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder17,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 9,
                                                            top: 9,
                                                            right: 10,
                                                            bottom: 7,
                                                          ),
                                                          child: Text(
                                                            "lbl_sa".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium12,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 20,
                                                      right: 20,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          16.00,
                                                        ),
                                                      ),
                                                      child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgImage32x32,
                                                        height: getSize(
                                                          32.00,
                                                        ),
                                                        width: getSize(
                                                          32.00,
                                                        ),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    margin: getMargin(
                                                      left: 10,
                                                    ),
                                                    padding: getPadding(
                                                      left: 10,
                                                      top: 8,
                                                      right: 10,
                                                      bottom: 8,
                                                    ),
                                                    decoration: AppDecoration
                                                        .txtOutlineWhiteA700
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .txtCircleBorder16,
                                                    ),
                                                    child: Text(
                                                      "lbl_ta".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 11,
                                            ),
                                            child: Text(
                                              "lbl_21_hr".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratMedium14,
                                            ),
                                          ),
                                        ],
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
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: getMargin(
                            top: 106,
                            bottom: 106,
                          ),
                          decoration: AppDecoration.outlineGray9000f.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder17,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 18,
                                  bottom: 83,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgAirplane,
                                  height: getSize(
                                    40.00,
                                  ),
                                  width: getSize(
                                    40.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 19,
                                  right: 20,
                                  bottom: 16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        231.00,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "lbl_hyva_required".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtMontserratSemiBold16Gray90090
                                                .copyWith(
                                              letterSpacing: 0.64,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 1,
                                              bottom: 3,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgFavorite,
                                              height: getVerticalSize(
                                                16.00,
                                              ),
                                              width: getHorizontalSize(
                                                18.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        215.00,
                                      ),
                                      margin: getMargin(
                                        top: 10,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "msg_banglore_electronic".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratSemiBold16Gray900a2
                                            .copyWith(
                                          letterSpacing: 0.64,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: getPadding(
                                          top: 38,
                                          right: 4,
                                        ),
                                        child: Text(
                                          "msg_20_tonnes_steel".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMontserratMedium14
                                              .copyWith(
                                            letterSpacing: 0.56,
                                          ),
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
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          margin: getMargin(
                            top: 10,
                          ),
                          decoration: AppDecoration.outlineGray9000f1.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder17,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 18,
                                  bottom: 79,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgCar,
                                  height: getSize(
                                    40.00,
                                  ),
                                  width: getSize(
                                    40.00,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 18,
                                  top: 18,
                                  right: 20,
                                  bottom: 16,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        231.00,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(
                                            "lbl_lcv_available".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtMontserratBold16
                                                .copyWith(
                                              letterSpacing: 0.64,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              bottom: 2,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgFavorite,
                                              height: getVerticalSize(
                                                16.00,
                                              ),
                                              width: getHorizontalSize(
                                                18.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        175.00,
                                      ),
                                      margin: getMargin(
                                        top: 8,
                                        right: 10,
                                      ),
                                      child: Text(
                                        "msg_banglore_electronic2".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMontserratMedium14,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        231.00,
                                      ),
                                      margin: getMargin(
                                        top: 11,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 3,
                                            ),
                                            child: Text(
                                              "msg_quantity_20_tonnes".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold14Gray90090
                                                  .copyWith(
                                                letterSpacing: 0.56,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "lbl_21_hr".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtMontserratMedium14,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomTextFormField(
                        width: 251,
                        focusNode: FocusNode(),
                        controller: controller.floatingButtonController,
                        hintText: "lbl_attach_lorries".tr,
                        margin: getMargin(
                          left: 10,
                          top: 171,
                          right: 8,
                          bottom: 171,
                        ),
                        variant: TextFormFieldVariant.OutlineBlueA7004c,
                        fontStyle: TextFormFieldFontStyle.MontserratBold14,
                        textInputAction: TextInputAction.done,
                        alignment: Alignment.topRight,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
