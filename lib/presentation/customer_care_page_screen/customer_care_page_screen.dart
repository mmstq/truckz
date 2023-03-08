import 'controller/customer_care_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';

class CustomerCarePageScreen extends GetWidget<CustomerCarePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,

            body: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(26),
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
                              onPressed: onTapArrowleft10,
                            ),
                          ),
                          AppbarTitle(
                              text: "lbl_select_location".tr,
                              margin: getMargin(left: 24))
                        ],
                      ),
                    ),
                    Container(
                        height: getVerticalSize(1.00),
                        width: size.width,
                        decoration:
                            BoxDecoration(color: ColorConstant.gray9000a)),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 23, top: 30, right: 22),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: getHorizontalSize(254.00),
                                            margin: getMargin(left: 1, right: 10),
                                            child: Text(
                                                "msg_terms_conditions3".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold14Gray900
                                                    .copyWith(
                                                        letterSpacing: 0.84,
                                                        height: 1.71))),
                                        Container(
                                            width: getHorizontalSize(283.00),
                                            margin: getMargin(top: 37),
                                            child: Text("msg_1_lorem_ipsum".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium16Gray90090
                                                    .copyWith(
                                                        letterSpacing: 0.64))),
                                        Container(
                                            width: getHorizontalSize(283.00),
                                            margin: getMargin(top: 37),
                                            child: Text("msg_2_lorem_ipsum".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratMedium16Gray90090
                                                    .copyWith(
                                                        letterSpacing: 0.64)))
                                      ]),
                                  Padding(
                                      padding: getPadding(top: 38, bottom: 70),
                                      child: CommonImageView(
                                          svgPath: ImageConstant.imgSlider,
                                          height: getVerticalSize(552.00),
                                          width: getHorizontalSize(20.00)))
                                ])))
                  ]),
            )));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
