import 'package:truck_booking/widgets/custom_scrollbarWidget.dart';
import 'package:velocity_x/velocity_x.dart';

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
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(75.4),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      AppbarIconbutton(
                          svgPath: ImageConstant.imgArrowleft,
                          margin: getMargin(left: 24, top: 8, bottom: 8),
                          onTap: onTapArrowleft10),
                      50.widthBox,
                      AppbarTitle(text: "msg_terms_conditions2".tr)
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
            // CustomAppBar(
            //     height: getVerticalSize(56.00),
            //     leadingWidth: 64,
            //     leading: AppbarIconbutton(
            //         svgPath: ImageConstant.imgArrowleft,
            //         margin: getMargin(left: 24, top: 8, bottom: 8),
            //         onTap: onTapArrowleft10),
            //     centerTitle: true,
            //     title: AppbarTitle(text: "msg_terms_conditions2".tr)),
            body: ListView.builder(
                controller: controller.scrollController,
                itemCount: 1,
                  itemBuilder: (ctx, index) {
                return Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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

                        ]
                    );
              }),
            ));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
