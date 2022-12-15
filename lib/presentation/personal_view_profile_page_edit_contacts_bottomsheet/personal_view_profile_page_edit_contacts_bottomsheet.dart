import 'controller/personal_view_profile_page_edit_contacts_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/core/utils/validation_functions.dart';
import 'package:truck_booking/widgets/custom_button.dart';
import 'package:truck_booking/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalViewProfilePageEditContactsBottomsheet extends StatelessWidget {
  PersonalViewProfilePageEditContactsBottomsheet(this.controller);

  PersonalViewProfilePageEditContactsController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.infinity,
            decoration: AppDecoration.outlineGray9000a,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 24, top: 24, right: 24),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            InkWell(
                                onTap: () {
                                  onTapImgClose();
                                },
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgClose1,
                                    height: getSize(40.00),
                                    width: getSize(40.00))),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 11, bottom: 10),
                                child: Text("lbl_edit_details".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtMontserratBold14Gray900
                                        .copyWith(letterSpacing: 1.96)))
                          ])),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 24),
                      decoration:
                          BoxDecoration(color: ColorConstant.gray90063)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: getVerticalSize(60.00),
                          width: getHorizontalSize(327.00),
                          margin: getMargin(left: 24, top: 22, right: 24),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: getPadding(
                                        left: 20,
                                        top: 21,
                                        right: 20,
                                        bottom: 21),
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgCall,
                                        height: getSize(18.00),
                                        width: getSize(18.00)))),
                            CustomTextFormField(
                                width: 327,
                                focusNode: FocusNode(),
                                controller: controller.groupTwoController,
                                hintText: "msg_91_8700292081".tr,
                                alignment: Alignment.centerLeft)
                          ]))),
                  CustomTextFormField(
                      width: 327,
                      focusNode: FocusNode(),
                      controller: controller.emailController,
                      hintText: "msg_danishmehraab_gmail_com".tr,
                      margin: getMargin(left: 24, top: 24, right: 24),
                      alignment: Alignment.center,
                      suffix: Container(
                          margin: getMargin(
                              left: 27, top: 21, right: 20, bottom: 19),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgContrast)),
                      suffixConstraints: BoxConstraints(
                          minWidth: getHorizontalSize(20.00),
                          minHeight: getVerticalSize(20.00)),
                      validator: (value) {
                        if (value == null ||
                            (!isValidEmail(value, isRequired: true))) {
                          return "Please enter valid email";
                        }
                        return null;
                      }),
                  CustomTextFormField(
                      width: 327,
                      focusNode: FocusNode(),
                      controller: controller.websiteFieldController,
                      hintText: "lbl_add_website".tr,
                      margin: getMargin(left: 24, top: 24, right: 24),
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.center,
                      suffix: Container(
                          margin: getMargin(
                              left: 30, top: 21, right: 20, bottom: 19),
                          child:
                              CommonImageView(svgPath: ImageConstant.imgGlobe)),
                      suffixConstraints: BoxConstraints(
                          minWidth: getHorizontalSize(20.00),
                          minHeight: getVerticalSize(20.00))),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 24),
                      decoration:
                          BoxDecoration(color: ColorConstant.gray90063)),
                  CustomButton(
                      width: 327,
                      text: "lbl_save_changes".tr,
                      margin:
                          getMargin(left: 24, top: 23, right: 24, bottom: 5),
                      alignment: Alignment.center)
                ])));
  }

  onTapImgClose() {
    Get.back();
  }
}
