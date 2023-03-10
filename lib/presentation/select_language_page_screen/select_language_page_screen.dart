import '../../widgets/app_bar/appbar_title.dart';
import 'controller/select_language_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_button.dart';
import 'package:truck_booking/widgets/custom_text_form_field.dart';

class SelectLanguagePageScreen extends GetWidget<SelectLanguagePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(16),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              border:
                              Border.all(color: Colors.grey.shade200, width: 2)),
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                            ),
                            onPressed: ()=> Navigator.pop(context),
                          ),
                        ),
                        AppbarTitle(
                            text: "lbl_select_location".tr,
                            margin: getMargin(left: 24))
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                              BoxDecoration(color: ColorConstant.gray9000a))),
                  CustomTextFormField(
                      width: 327,
                      focusNode: FocusNode(),
                      controller: controller.languageController,
                      hintText: "lbl_english2".tr,
                      margin: getMargin(left: 24, top: 23, right: 24),
                      variant: TextFormFieldVariant.OutlineAmberA400,
                      shape: TextFormFieldShape.RoundedBorder8,
                      fontStyle: TextFormFieldFontStyle
                          .MontserratSemiBold16AmberA400a2,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                          padding:
                              getPadding(left: 6, top: 8, right: 6, bottom: 7),
                          margin: getMargin(
                              left: 30, top: 19, right: 20, bottom: 19),
                          decoration: BoxDecoration(
                              color: ColorConstant.amberA400,
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(11.00))),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgCheckmark6x10)),
                      suffixConstraints: BoxConstraints(
                          minWidth: getHorizontalSize(10.00),
                          minHeight: getVerticalSize(6.00))),
                  Container(
                      margin: getMargin(left: 24, top: 16, right: 24),
                      decoration: AppDecoration.outlineGray9005e.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 19, bottom: 20),
                                child: Text("lbl_hindi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium16Gray90090
                                        .copyWith(
                                            letterSpacing: 0.64,
                                            height: 1.25))),
                            Container(
                                height: getSize(22.00),
                                width: getSize(22.00),
                                margin:
                                    getMargin(top: 19, right: 20, bottom: 19),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(11.00)),
                                    border: Border.all(
                                        color: ColorConstant.gray9005e,
                                        width: getHorizontalSize(2.00))))
                          ])),
                  Container(
                      margin: getMargin(left: 24, top: 16, right: 24),
                      decoration: AppDecoration.outlineGray9005e.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 21, bottom: 18),
                                child: Text("lbl_spanish".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium16Gray90090
                                        .copyWith(
                                            letterSpacing: 0.64,
                                            height: 1.25))),
                            Container(
                                height: getSize(22.00),
                                width: getSize(22.00),
                                margin:
                                    getMargin(top: 19, right: 20, bottom: 19),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(11.00)),
                                    border: Border.all(
                                        color: ColorConstant.gray9005e,
                                        width: getHorizontalSize(2.00))))
                          ])),
                  Container(
                      margin: getMargin(left: 24, top: 16, right: 24),
                      decoration: AppDecoration.outlineGray9005e.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 19, bottom: 20),
                                child: Text("lbl_italian".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium16Gray90090
                                        .copyWith(
                                            letterSpacing: 0.64,
                                            height: 1.25))),
                            Container(
                                height: getSize(22.00),
                                width: getSize(22.00),
                                margin:
                                    getMargin(top: 19, right: 20, bottom: 19),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(11.00)),
                                    border: Border.all(
                                        color: ColorConstant.gray9005e,
                                        width: getHorizontalSize(2.00))))
                          ])),
                  Container(
                      margin: getMargin(left: 24, top: 16, right: 24),
                      decoration: AppDecoration.outlineGray9005e.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 19, top: 19, bottom: 20),
                                child: Text("lbl_arabic".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium16Gray90090
                                        .copyWith(
                                            letterSpacing: 0.64,
                                            height: 1.25))),
                            Container(
                                height: getSize(22.00),
                                width: getSize(22.00),
                                margin:
                                    getMargin(top: 19, right: 20, bottom: 19),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(11.00)),
                                    border: Border.all(
                                        color: ColorConstant.gray9005e,
                                        width: getHorizontalSize(2.00))))
                          ])),
                  Container(
                      margin: getMargin(left: 24, top: 16, right: 24),
                      decoration: AppDecoration.outlineGray9005e.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 21, bottom: 18),
                                child: Text("lbl_language_6".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium16Gray90090
                                        .copyWith(
                                            letterSpacing: 0.64,
                                            height: 1.25))),
                            Container(
                                height: getSize(22.00),
                                width: getSize(22.00),
                                margin:
                                    getMargin(top: 19, right: 20, bottom: 19),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(11.00)),
                                    border: Border.all(
                                        color: ColorConstant.gray9005e,
                                        width: getHorizontalSize(2.00))))
                          ])),
                  Container(
                      margin: getMargin(left: 24, top: 16, right: 24),
                      decoration: AppDecoration.outlineGray9005e.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 22, bottom: 18),
                                child: Text("lbl_language_7".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtMontserratMedium16Gray90090
                                        .copyWith(
                                            letterSpacing: 0.64,
                                            height: 1.25))),
                            Container(
                                height: getSize(22.00),
                                width: getSize(22.00),
                                margin:
                                    getMargin(top: 19, right: 20, bottom: 19),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        getHorizontalSize(11.00)),
                                    border: Border.all(
                                        color: ColorConstant.gray9005e,
                                        width: getHorizontalSize(2.00))))
                          ])),
                  CustomButton(
                      width: 327,
                      text: "lbl_continue".tr,
                      margin:
                          getMargin(left: 24, top: 61, right: 24, bottom: 5))
                ])));
  }

  onTapArrowleft12() {
    Get.back();
  }
}
