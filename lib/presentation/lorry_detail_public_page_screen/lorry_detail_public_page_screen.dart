import 'package:like_button/like_button.dart';
import 'package:velocity_x/velocity_x.dart';

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
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(size.height * 0.093),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        margin: getMargin(
                            top: 8.0,
                            left: 8.0
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border:
                            Border.all(color: Colors.grey.shade200, width: 2)),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20,
                          ),
                          onPressed: onTapArrowleft2,
                        ),
                      ),
                      AppbarTitle(text: "msg_terms_conditions2".tr),
                      Container(
                        padding: getPadding(
                          top: 8,
                          left: 8,
                          right: 7,
                          bottom: 8
                        ),
                        margin: getMargin(
                          top: 8.0
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          border: Border.all(color: Colors.grey.shade200, width: 2)
                        ),
                        child: LikeButton(
                          likeBuilder: (bool isLiked) {
                            return isLiked
                                ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )
                                : Icon(Icons.favorite_border, color: ColorConstant.gray90063,);
                          },
                        ),
                      )
                    ],
                  ),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 16),
                      decoration:
                      BoxDecoration(color: ColorConstant.gray90063)),
                ],
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                                  color: Color(0xFFF9F9F9),
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
                                  color: Color(0xFFF9F9F9),
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
                                  color: Color(0xFFF9F9F9),
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
