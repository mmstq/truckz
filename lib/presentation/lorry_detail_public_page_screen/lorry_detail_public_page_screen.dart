import '../lorry_detail_public_page_screen/widgets/listcall_item_widget.dart';
import 'controller/lorry_detail_public_page_controller.dart';
import 'models/listcall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_button.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

class LorryDetailPublicPageScreen
    extends GetWidget<LorryDetailPublicPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(88.00),
                leadingWidth: 64,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 24, bottom: 24),
                    onTap: onTapArrowleft2),
                title: AppbarTitle(
                    text: "lbl_lorry_details".tr, margin: getMargin(left: 24)),
                actions: [
                  CustomIconButton(
                      height: 40,
                      width: 40,
                      margin: getMargin(all: 24),
                      padding: IconButtonPadding.PaddingAll12,
                      child: CommonImageView(
                          svgPath: ImageConstant.imgFavorite40x40))
                ],
                styleType: Style.bgFillWhiteA700),
            body: SingleChildScrollView(
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
                          decoration:
                              BoxDecoration(color: ColorConstant.gray90063))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 24, top: 22, right: 24),
                          child: Text("lbl_location".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold14Gray90087
                                  .copyWith(letterSpacing: 1.12)))),
                  Padding(
                      padding: getPadding(left: 24, top: 22, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                width: getHorizontalSize(256.00),
                                margin: getMargin(top: 1),
                                child: Text("msg_banglore_electronic3".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratSemiBold16Gray900a2
                                        .copyWith(letterSpacing: 0.80))),
                            CustomIconButton(
                                height: 40,
                                width: 40,
                                margin: getMargin(bottom: 2),
                                variant: IconButtonVariant.FillAmberA400,
                                padding: IconButtonPadding.PaddingAll12,
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgMap))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 24, top: 27, right: 24),
                          child: Text("lbl_details".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold14Gray90087
                                  .copyWith(letterSpacing: 1.12)))),
                  Padding(
                      padding: getPadding(left: 24, top: 16, right: size.width * 0.04),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                                decoration: AppDecoration.outlineGray900632
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder13),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 28, top: 18, right: 28),
                                          child: Text("lbl_date".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular14Gray90090
                                                  .copyWith(
                                                      letterSpacing: 0.70))),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 17,
                                                  top: 7,
                                                  right: 17,
                                                  bottom: 16),
                                              child: Text("lbl_3_4_20".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtMontserratSemiBold16
                                                      .copyWith(
                                                          letterSpacing:
                                                              0.80))))
                                    ])),
                            Container(
                                margin: getMargin(left: 16),
                                decoration: AppDecoration.outlineGray900632
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder13),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 24, top: 19, right: 24),
                                          child: Text("lbl_lorry".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular14Gray90090
                                                  .copyWith(
                                                      letterSpacing: 0.70))),
                                      Padding(
                                          padding: getPadding(
                                              left: 24,
                                              top: 4,
                                              right: 24,
                                              bottom: 17),
                                          child: Text("lbl_truck".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold16
                                                  .copyWith(
                                                      letterSpacing: 0.80)))
                                    ])),
                            Container(
                                margin: getMargin(left: 17),
                                decoration: AppDecoration.outlineGray900632
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.circleBorder13),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: getPadding(
                                              left: 16, top: 19, right: 15),
                                          child: Text("lbl_quantity".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratRegular14Gray90090
                                                  .copyWith(
                                                      letterSpacing: 0.70))),
                                      Padding(
                                          padding: getPadding(
                                              left: 16,
                                              top: 5,
                                              right: 15,
                                              bottom: 17),
                                          child: Text("lbl_32_tons".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtMontserratSemiBold16
                                                  .copyWith(
                                                      letterSpacing: 0.80)))
                                    ]))
                          ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 24),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray90063))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 24, top: 22, right: 24),
                          child: Text("lbl_description".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold14Gray90087
                                  .copyWith(letterSpacing: 0.84)))),
                  Container(
                      height: getVerticalSize(102.00),
                      width: getHorizontalSize(325.00),
                      margin: getMargin(left: 24, top: 23, right: 24),
                      child: Stack(alignment: Alignment.bottomRight, children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                width: getHorizontalSize(303.00),
                                margin: getMargin(right: 10, bottom: 10),
                                child: Text("msg_lorem_ipsum_is_simply".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratMedium14Gray900
                                        .copyWith(letterSpacing: 0.84)))),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                                padding: getPadding(left: 10, top: 10),
                                child: Text("lbl_read_more".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratSemiBold14BlueA700
                                        .copyWith(letterSpacing: 0.28))))
                      ])),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          margin: getMargin(top: 25),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray90063))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 24, top: 22, right: 24),
                          child: Text("lbl_contacts".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold14Gray90087
                                  .copyWith(letterSpacing: 0.84)))),
                  Padding(
                      padding: getPadding(left: 24, top: 18, right: 24),
                      child: Obx(() => ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.lorryDetailPublicPageModelObj
                              .value.listcallItemList.length,
                          itemBuilder: (context, index) {
                            ListcallItemModel model = controller
                                .lorryDetailPublicPageModelObj
                                .value
                                .listcallItemList[index];
                            return ListcallItemWidget(model);
                          }))),
                  CustomButton(
                      width: 375,
                      text: "lbl_call".tr,
                      margin: getMargin(top: 32),
                      shape: ButtonShape.Square,
                      fontStyle: ButtonFontStyle.MontserratBold16,
                      alignment: Alignment.centerLeft)
                ]))));
  }

  onTapArrowleft2() {
    Get.back();
  }
}
