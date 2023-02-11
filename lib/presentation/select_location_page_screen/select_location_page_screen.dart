import 'controller/select_location_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_text_form_field.dart';

class SelectLocationPageScreen extends GetWidget<SelectLocationPageController> {
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
                    onTap: onTapArrowleft),
                title: AppbarTitle(
                    text: "lbl_select_location".tr,
                    margin: getMargin(left: 24))),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomTextFormField(
                        width: 327,
                        focusNode: FocusNode(),
                        controller: controller.locationFieldController,
                        hintText: "msg_enter_your_location".tr,
                        margin: getMargin(left: 24, top: 16, right: 24),
                        variant: TextFormFieldVariant.OutlineGray90019,
                        fontStyle: TextFormFieldFontStyle.MontserratSemiBold14,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                            margin: getMargin(
                                left: 30, top: 20, right: 18, bottom: 20),
                            child: CommonImageView(
                                svgPath: ImageConstant.imgSettings20x20)),
                        suffixConstraints: BoxConstraints(
                            minWidth: getHorizontalSize(20.00),
                            minHeight: getVerticalSize(20.00))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 24, top: 24, right: 24),
                            child: Text("lbl_recent_searches".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratBold14Gray9007e
                                    .copyWith(letterSpacing: 1.12)))),
                    Container(
                        width: double.infinity,
                        margin: getMargin(left: 24, top: 14, right: 24),
                        decoration: AppDecoration.outlineGray9005f2.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder13),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding:
                                  getPadding(left: 16, top: 17, right: 16),
                                  child: Text("lbl_haryana".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium16Gray900
                                          .copyWith(letterSpacing: 0.64))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding:
                                      getPadding(left: 16, top: 8, right: 16),
                                      child: Text("msg_faridabad_gurgaon".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMontserratMedium14
                                              .copyWith(letterSpacing: 0.56)))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 12),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray90063)),
                              Padding(
                                  padding:
                                  getPadding(left: 16, top: 15, right: 16),
                                  child: Text("lbl_hyderabad".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium16Gray900
                                          .copyWith(letterSpacing: 0.64))),
                              Padding(
                                  padding:
                                  getPadding(left: 16, top: 8, right: 16),
                                  child: Text("msg_faridabad_gurgaon2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium14
                                          .copyWith(letterSpacing: 0.56))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 14),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray90063)),
                              Padding(
                                  padding:
                                  getPadding(left: 16, top: 14, right: 16),
                                  child: Text("lbl_himachal".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium16Gray900
                                          .copyWith(letterSpacing: 0.64))),
                              Padding(
                                  padding: getPadding(
                                      left: 16, top: 10, right: 16, bottom: 14),
                                  child: Text("msg_faridabad_gurgaon2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratMedium14
                                          .copyWith(letterSpacing: 0.56)))
                            ])),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(top: 20),
                            child: CommonImageView(
                                imagePath: ImageConstant.imgIllustration,
                                height: getVerticalSize(323.00),
                                width: getHorizontalSize(375.00))))
                  ]),
            )));
  }

  onTapArrowleft() {
    Get.back();
  }
}
