import '../latest_lorries_page_screen/widgets/listcar_item_widget.dart';
import 'controller/latest_lorries_page_controller.dart';
import 'models/listcar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';

class LatestLorriesPageScreen extends GetWidget<LatestLorriesPageController> {
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
                    onTap: onTapArrowleft1),
                title: AppbarTitle(
                    text: "lbl_latest_lorries".tr,
                    margin: getMargin(left: 25))),
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
                                      getPadding(left: 24, top: 23, right: 24),
                                  child: Text("msg_latest_lorries_30".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 0.84)))),
                          Padding(
                              padding: getPadding(left: 24, top: 21, right: size.width * 0.05),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .latestLorriesPageModelObj
                                      .value
                                      .listcarItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListcarItemModel model = controller
                                        .latestLorriesPageModelObj
                                        .value
                                        .listcarItemList[index];
                                    return ListcarItemWidget(model);
                                  })))
                        ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
