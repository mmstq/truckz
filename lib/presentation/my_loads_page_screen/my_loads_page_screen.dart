import 'controller/my_loads_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';

class MyLoadsPageScreen extends GetWidget<MyLoadsPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 64,
                leading: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 12, top: 8),
                  height: 50,
                  width: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      onTapArrowleft9();
                    },
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                          color: Colors.grey.shade200, width: 2)),
                ),
                title: AppbarTitle(
                    text: "lbl_my_loads2".tr, margin: getMargin(left: 24)),
                actions: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 8, right: 8),
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(
                        Icons.more_horiz_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                            color: Colors.grey.shade200, width: 2)),
                  ),
                ]),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray90063))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 23, top: 22, right: 23),
                                  child: Text("lbl_active_loads2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 1.12)))),
                          Container(
                              margin: getMargin(left: 23, top: 16, right: 23),
                              decoration: AppDecoration.outlineAmberA400
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder17),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 122),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgAirplane,
                                            height: getSize(40.00),
                                            width: getSize(40.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_truck_required"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold14Gray90090
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.56)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 1),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite,
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00)))
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(215.00),
                                                  margin: getMargin(
                                                      top: 12, right: 10),
                                                  child: Text(
                                                      "msg_banglore_electronic"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold16Gray900a2
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.64))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 13, right: 10),
                                                  child: Text(
                                                      "msg_20_tonnes_steel".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.56))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  margin: getMargin(top: 11),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            height:size.height * 0.05,
                                                            width:
                                                                getHorizontalSize(
                                                                    92.00),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  10),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgImage, height: getSize(32.00), width: getSize(32.00), fit: BoxFit.cover)))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Container(
                                                                          margin: getMargin(left: 20, right: 20),
                                                                          decoration: AppDecoration.outlineWhiteA700.copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                            Padding(
                                                                                padding: getPadding(left: 9, top: 9, right: 10, bottom: 7),
                                                                                child: Text("lbl_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium12))
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  20,
                                                                              right:
                                                                                  20),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgImage32x32, height: getSize(32.00), width: getSize(32.00), fit: BoxFit.cover)))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  10),
                                                                          padding: getPadding(
                                                                              left:
                                                                                  10,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  10,
                                                                              bottom:
                                                                                  8),
                                                                          decoration: AppDecoration.txtOutlineWhiteA700.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtCircleBorder16),
                                                                          child: Text(
                                                                              "lbl_ta".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratMedium12)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10,
                                                                bottom: 11),
                                                            child: Text(
                                                                "lbl_21_hr".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium14))
                                                      ]))
                                            ]))
                                  ])),
                          Container(
                              margin: getMargin(left: 23, top: 16, right: 23),
                              decoration: AppDecoration.outlineGray9000f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder17),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 83),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgAirplane,
                                            height: getSize(40.00),
                                            width: getSize(40.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 19, bottom: 15),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_hyva_required"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold16Gray90090
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.64)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 3),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite,
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00)))
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(215.00),
                                                  margin: getMargin(
                                                      top: 13, right: 10),
                                                  child: Text(
                                                      "msg_banglore_electronic"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold16Gray900a2
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.64))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  margin: getMargin(top: 13),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "msg_20_tonnes_steel"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium14
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.56)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2,
                                                                bottom: 4),
                                                            child: Text(
                                                                "lbl_21_hr".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium14))
                                                      ]))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 24, right: 24),
                                  child: Text("lbl_inactive_loads2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 1.12)))),
                          Container(
                              margin: getMargin(left: 23, top: 16, right: 23),
                              decoration: AppDecoration.outlineGray9005f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder17),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 122),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgAirplane,
                                            height: getSize(40.00),
                                            width: getSize(40.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 14),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_truck_required"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold14Gray90090
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.56)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 1),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite,
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00)))
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(215.00),
                                                  margin: getMargin(
                                                      top: 12, right: 10),
                                                  child: Text(
                                                      "msg_banglore_electronic"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold16Gray900a2
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.64))),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 13, right: 10),
                                                  child: Text(
                                                      "msg_20_tonnes_steel".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratMedium14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.56))),
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  margin: getMargin(top: 11),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                            height:
                                                                size.height * 0.05,
                                                            width:
                                                                getHorizontalSize(
                                                                    92.00),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              right:
                                                                                  10),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgImage, height: getSize(32.00), width: getSize(32.00), fit: BoxFit.cover)))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Container(
                                                                          margin: getMargin(left: 20, right: 20),
                                                                          decoration: AppDecoration.outlineWhiteA700.copyWith(borderRadius: BorderRadiusStyle.circleBorder17),
                                                                          child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                            Padding(
                                                                                padding: getPadding(left: 9, top: 9, right: 10, bottom: 7),
                                                                                child: Text("lbl_sa".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratMedium12))
                                                                          ]))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  20,
                                                                              right:
                                                                                  20),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(16.00)),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgImage32x32, height: getSize(32.00), width: getSize(32.00), fit: BoxFit.cover)))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Container(
                                                                          margin: getMargin(
                                                                              left:
                                                                                  10),
                                                                          padding: getPadding(
                                                                              left:
                                                                                  10,
                                                                              top:
                                                                                  8,
                                                                              right:
                                                                                  10,
                                                                              bottom:
                                                                                  8),
                                                                          decoration: AppDecoration.txtOutlineWhiteA700.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .txtCircleBorder16),
                                                                          child: Text(
                                                                              "lbl_ta".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtMontserratMedium12)))
                                                                ])),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 10,
                                                                bottom: 11),
                                                            child: Text(
                                                                "lbl_21_hr".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium14))
                                                      ]))
                                            ]))
                                  ])),
                          Container(
                              margin: getMargin(left: 23, top: 12, right: 23),
                              decoration: AppDecoration.outlineGray9000f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder17),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 18, bottom: 83),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgAirplane,
                                            height: getSize(40.00),
                                            width: getSize(40.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 19, bottom: 16),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width:
                                                      getHorizontalSize(231.00),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                            "lbl_hyva_required"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold16Gray90090
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.64)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                bottom: 3),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgFavorite,
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        18.00)))
                                                      ])),
                                              Container(
                                                  width:
                                                      getHorizontalSize(215.00),
                                                  margin: getMargin(
                                                      top: 6, right: 10),
                                                  child: Text(
                                                      "msg_banglore_electronic"
                                                          .tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratSemiBold16Gray900a2
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.64))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 10, right: 4),
                                                      child: Text(
                                                          "msg_20_tonnes_steel"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratMedium14
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.56))))
                                            ]))
                                  ]))
                        ])))));
  }

  onTapArrowleft9() {
    Get.back();
  }
}
