import '../personal_profile_page_full_screen/widgets/listcontrast_item_widget.dart';
import '../personal_profile_page_full_screen/widgets/listratingstars1_item_widget.dart';
import 'controller/personal_profile_page_full_controller.dart';
import 'models/listcontrast_item_model.dart';
import 'models/listratingstars1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

class PersonalProfilePageFullScreen
    extends GetWidget<PersonalProfilePageFullController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 8, bottom: 8),
                    onTap: ()=> Navigator.pop(context)),
                title: AppbarTitle(
                    text: "lbl_profile".tr, margin: getMargin(left: 24)),
                actions: [
                  AppbarIconbutton(
                      svgPath: ImageConstant.imgButton,
                      margin: getMargin(left: 24, top: 8, right: 24, bottom: 8))
                ]),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 16, bottom: 28),
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
                                      color: ColorConstant.gray90063))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 21, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 1, bottom: 19),
                                            child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            8.00)),
                                                child: CommonImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage,
                                                    height: getSize(80.00),
                                                    width: getSize(80.00),
                                                    fit: BoxFit.cover))),
                                        Padding(
                                            padding: getPadding(left: 18),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                                "lbl_danish_mehrab2"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold18
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.36)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 8,
                                                                        top: 3,
                                                                        bottom:
                                                                            2),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheckmark16x16,
                                                                    height:
                                                                        getSize(
                                                                            16.00),
                                                                    width: getSize(
                                                                        16.00)))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          210.00),
                                                      margin:
                                                          getMargin(top: 12),
                                                      child: Text(
                                                          "msg_transport_contractor"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold14Indigo90090
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.56))),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 12, right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            2),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgLocation12x10,
                                                                    height:
                                                                        getVerticalSize(
                                                                            12.00),
                                                                    width: getHorizontalSize(
                                                                        10.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            8),
                                                                child: Text(
                                                                    "msg_mumbai_maharastra"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtMontserratMedium14AmberA400
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                0.56)))
                                                          ]))
                                                ]))
                                      ]))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 24),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray90063))),
                          Container(
                              margin: getMargin(left: 24, top: 23, right: 24),
                              decoration: AppDecoration.outlineGray900192
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder13),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding:
                                            getPadding(top: 25, bottom: 24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 9, right: 9),
                                                  child: Text("lbl_150".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.64))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Text(
                                                          "lbl_loads".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12Gray90087
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.48))))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 49, top: 25, bottom: 24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 13, right: 13),
                                                  child: Text("lbl_1_5k".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.64))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 10),
                                                      child: Text(
                                                          "lbl_reviews".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12Gray90087
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.48))))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 43, top: 25, bottom: 25),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, right: 16),
                                                  child: Text("lbl_5_0".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtMontserratBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  0.70))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_ratings".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12Gray90087
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      0.48))))
                                            ]))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 24, right: 24),
                                  child: Text("lbl_loads".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray90087
                                          .copyWith(letterSpacing: 1.12)))),
                          Container(
                              margin: getMargin(left: 24, top: 16, right: 23),
                              decoration: AppDecoration.outlineGray90020
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder13),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 13, bottom: 15),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgGroup389,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 15, bottom: 1),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "lbl_active_loads"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratSemiBold16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.64)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 1,
                                                                top: 5,
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_2_active_loads"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium12Gray9007e))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 30, right: 24, bottom: 30),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(10.00),
                                            width: getHorizontalSize(5.00)))
                                  ])),
                          Container(
                              margin: getMargin(left: 24, top: 16, right: 23),
                              decoration: AppDecoration.outlineGray90020
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder13),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 13, bottom: 15),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgClock40x40,
                                                      height: getSize(40.00),
                                                      width: getSize(40.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, bottom: 1),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "lbl_inactive_loads"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratSemiBold16
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.64))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 5,
                                                                right: 10),
                                                            child: Text(
                                                                "msg_12_inactive_loads"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium12Gray9007e))
                                                      ]))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            top: 30, right: 24, bottom: 30),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(10.00),
                                            width: getHorizontalSize(5.00)))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 32, right: 24),
                                  child: Text("lbl_contact_details".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray90087
                                          .copyWith(letterSpacing: 1.12)))),
                          Padding(
                              padding: getPadding(left: 24, top: 22, right: 24),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                  .OutlineGray9005f,
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgCall)),
                                          Padding(
                                              padding: getPadding(
                                                  left: 25, top: 1, bottom: 1),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            right: 10),
                                                        child: Text(
                                                            "lbl_phone_no".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratBold16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.80))),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Text(
                                                            "lbl_91_9071212000"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium14Gray90090
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        1.12)))
                                                  ]))
                                        ]),
                                    Padding(
                                        padding:
                                            getPadding(top: 14, bottom: 14),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgEdit,
                                            height: getSize(20.00),
                                            width: getSize(20.00)))
                                  ])),
                          Padding(
                              padding: getPadding(left: 24, top: 23, right: 24),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .personalProfilePageFullModelObj
                                      .value
                                      .listcontrastItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListcontrastItemModel model = controller
                                        .personalProfilePageFullModelObj
                                        .value
                                        .listcontrastItemList[index];
                                    return ListcontrastItemWidget(model);
                                  }))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 29),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray90063))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 22, right: 24),
                                  child: Text("lbl_reviews".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyBold14
                                          .copyWith(letterSpacing: 1.12)))),
                          Container(
                              margin: getMargin(left: 24, top: 18, right: 24),
                              decoration: AppDecoration.outlineIndigo90019
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder17),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 14, top: 14, bottom: 14),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              12.00)),
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgProfileimg,
                                                      height: getSize(48.00),
                                                      width: getSize(48.00),
                                                      fit: BoxFit.cover)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 12,
                                                      top: 5,
                                                      bottom: 3),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_you_danish_mehrab"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtMontserratMedium12Gray90090
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        0.48)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 6,
                                                                right: 10),
                                                            child: Text(
                                                                "lbl_write_a_review"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtMontserratMedium14Gray900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            0.56)))
                                                      ]))
                                            ])),
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(
                                            top: 18, right: 18, bottom: 18),
                                        variant: IconButtonVariant.FillTealA400,
                                        padding: IconButtonPadding.PaddingAll12,
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgEdit40x40))
                                  ])),
                          Padding(
                              padding: getPadding(left: 24, top: 24, right: 24),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .personalProfilePageFullModelObj
                                      .value
                                      .listratingstars1ItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    Listratingstars1ItemModel model = controller
                                        .personalProfilePageFullModelObj
                                        .value
                                        .listratingstars1ItemList[index];
                                    return Listratingstars1ItemWidget(model);
                                  })))
                        ])))));
  }

  onTapArrowleft6() {
    Get.back();
  }
}
