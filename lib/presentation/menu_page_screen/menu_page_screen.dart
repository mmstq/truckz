import 'package:velocity_x/velocity_x.dart';

import 'controller/menu_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_image.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

class MenuPageScreen extends GetWidget<MenuPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 24, top: 31, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        onTapImgClose();
                                      },
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgClose40x40,
                                          height: getSize(40.00),
                                          width: getSize(40.00))),
                                  Padding(
                                      padding: getPadding(
                                          left: 24, top: 11, bottom: 10),
                                      child: Text("lbl_menu".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14WhiteA700
                                              .copyWith(letterSpacing: 1.96)))
                                ]),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                variant: IconButtonVariant.FillAmberA400,
                                padding: IconButtonPadding.PaddingAll12,
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowright))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 32),
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA70067))),
                  Padding(
                      padding: getPadding(left: 24, top: 22, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(12.00)),
                                child: CommonImageView(
                                    imagePath: ImageConstant
                                        .imgPexelsemrekeshavarz3526923,
                                    height: getSize(64.00),
                                    width: getSize(64.00),
                                    fit: BoxFit.cover)),
                            Padding(
                                padding:
                                    getPadding(left: 21, top: 5, bottom: 5),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              width: getHorizontalSize(231.00),
                                              margin: getMargin(left: 1),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 5),
                                                        child: Text(
                                                            "lbl_danish_mehrab"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold22)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 20),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowrightWhiteA700,
                                                            height:
                                                                getVerticalSize(
                                                                    12.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    6.00)))
                                                  ]))),
                                      Padding(
                                          padding:
                                              getPadding(top: 5, right: 10),
                                          child: Text("lbl_view_profile".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratBold12TealA400
                                                  .copyWith(
                                                      letterSpacing: 0.48)))
                                    ])).onTap(() {
                                      Get.toNamed(AppRoutes.personalViewProfilePageScreen);
                            })
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 24),
                          decoration:
                              BoxDecoration(color: ColorConstant.whiteA70067))),
                  Padding(
                      padding: getPadding(left: 24, top: 22, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CommonImageView(
                                      svgPath: ImageConstant.imgComputer48x48,
                                      height: getSize(48.00),
                                      width: getSize(48.00)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 15, bottom: 12),
                                      child: Text("lbl_my_loads".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16WhiteA700
                                              .copyWith(letterSpacing: 0.80)))
                                ]),
                            Padding(
                                padding: getPadding(top: 18, bottom: 18),
                                child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightWhiteA700,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00)))
                          ]).onTap(() {
                        Get.toNamed(AppRoutes.myLoadsPageScreen);
                      })),
                  Padding(
                      padding: getPadding(left: 24, top: 24, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      variant:
                                          IconButtonVariant.OutlineWhiteA70067,
                                      padding: IconButtonPadding.PaddingAll12,
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgCheckmark)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 13, bottom: 14),
                                      child: Text("lbl_favorites".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16WhiteA700
                                              .copyWith(letterSpacing: 0.80)))
                                ]),
                            Padding(
                                padding: getPadding(top: 18, bottom: 18),
                                child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightWhiteA700,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00)))
                          ]).onTap(() {
                            Get.toNamed(AppRoutes.favoritesPageScreen);
                      })),
                  Padding(
                      padding: getPadding(left: 24, top: 24, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      variant:
                                          IconButtonVariant.OutlineWhiteA70067,
                                      padding: IconButtonPadding.PaddingAll12,
                                      child: CommonImageView(
                                          svgPath:
                                              ImageConstant.imgGlobe48x48)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 16, bottom: 11),
                                      child: Text("lbl_language".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16WhiteA700
                                              .copyWith(letterSpacing: 0.80)))
                                ]),
                            Padding(
                                padding: getPadding(top: 17, bottom: 15),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("lbl_english".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold12WhiteA70087
                                              .copyWith(letterSpacing: 0.60)),
                                      Padding(
                                          padding: getPadding(
                                              left: 24, top: 1, bottom: 2),
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightWhiteA700,
                                              height: getVerticalSize(12.00),
                                              width: getHorizontalSize(6.00)))
                                    ]))
                          ]).onTap(() {
                        Get.toNamed(AppRoutes.selectLanguagePageScreen);
                      })),
                  Padding(
                      padding: getPadding(left: 24, top: 24, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      variant:
                                          IconButtonVariant.OutlineWhiteA70067,
                                      padding: IconButtonPadding.PaddingAll12,
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgLightbulb)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 14, bottom: 13),
                                      child: Text("lbl_customer_care".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16WhiteA700
                                              .copyWith(letterSpacing: 0.80)))
                                ]),
                            Padding(
                                padding: getPadding(top: 18, bottom: 18),
                                child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightWhiteA700,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00)))
                          ]).onTap(() {
                        Get.toNamed(AppRoutes.customerCarePageFullScreen);
                      })),
                  Padding(
                      padding: getPadding(left: 24, top: 24, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomIconButton(
                                      height: 48,
                                      width: 48,
                                      variant:
                                          IconButtonVariant.OutlineWhiteA70067,
                                      padding: IconButtonPadding.PaddingAll12,
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgIcon)),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 13, bottom: 14),
                                      child: Text("msg_terms_conditions".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratSemiBold16WhiteA700
                                              .copyWith(letterSpacing: 0.80)))
                                ]),
                            Padding(
                                padding: getPadding(top: 18, bottom: 18),
                                child: CommonImageView(
                                    svgPath:
                                        ImageConstant.imgArrowrightWhiteA700,
                                    height: getVerticalSize(12.00),
                                    width: getHorizontalSize(6.00)))
                          ]).onTap(() {
                            Get.toNamed(AppRoutes.customerCarePageScreen);
                      })),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(top: 108),
                          decoration: AppDecoration.fillGray900,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(1.00),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA70067))),
                                Padding(
                                    padding: getPadding(
                                        left: 24,
                                        top: 22,
                                        right: 24,
                                        bottom: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant: IconButtonVariant
                                                        .OutlineWhiteA70067,
                                                    padding: IconButtonPadding
                                                        .PaddingAll12,
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgRefresh)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 15,
                                                        bottom: 12),
                                                    child: Text(
                                                        "msg_switch_to_parner"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratBold16WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    0.80)))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  top: 18, bottom: 18),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightWhiteA700,
                                                  height:
                                                      getVerticalSize(12.00),
                                                  width:
                                                      getHorizontalSize(6.00)))
                                        ]))
                              ])))
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
