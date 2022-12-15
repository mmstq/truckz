import '../customer_care_page_full_screen/widgets/listtext_item_widget.dart';
import '../customer_care_page_full_screen/widgets/listtext_two_item_widget.dart';
import 'controller/customer_care_page_full_controller.dart';
import 'models/listtext_item_model.dart';
import 'models/listtext_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_button.dart';

class CustomerCarePageFullScreen
    extends GetWidget<CustomerCarePageFullController> {
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
                    onTap: onTapArrowleft11),
                title: AppbarTitle(
                    text: "lbl_customer_care2".tr,
                    margin: getMargin(left: 24))),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 16),
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
                                      getPadding(left: 24, top: 23, right: 24),
                                  child: Text("msg_g7_group_head_office".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray90087
                                          .copyWith(letterSpacing: 1.12)))),
                          Container(
                              width: getHorizontalSize(320.00),
                              margin: getMargin(left: 23, top: 24, right: 23),
                              child: Text("msg_group_of_transporters".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratMedium16Gray900
                                      .copyWith(letterSpacing: 0.64))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 29, right: 24),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgButtons,
                                      height: getVerticalSize(48.00),
                                      width: getHorizontalSize(180.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: getMargin(top: 24),
                                  padding: getPadding(
                                      left: 23, top: 22, right: 23, bottom: 22),
                                  decoration: AppDecoration.txtFillGray9005e,
                                  child: Text("msg_authorised_business".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray90087
                                          .copyWith(letterSpacing: 1.12)))),
                          Padding(
                              padding: getPadding(left: 23, top: 27, right: 23),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .customerCarePageFullModelObj
                                      .value
                                      .listtextItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListtextItemModel model = controller
                                        .customerCarePageFullModelObj
                                        .value
                                        .listtextItemList[index];
                                    return ListtextItemWidget(model);
                                  }))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin: getMargin(top: 26),
                                  padding: getPadding(
                                      left: 23, top: 22, right: 23, bottom: 22),
                                  decoration: AppDecoration.txtFillGray9005e,
                                  child: Text("msg_authorised_franchises".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray90087
                                          .copyWith(letterSpacing: 1.12)))),
                          Padding(
                              padding: getPadding(left: 23, top: 26, right: 23),
                              child: Obx(() => ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: controller
                                      .customerCarePageFullModelObj
                                      .value
                                      .listtextTwoItemList
                                      .length,
                                  itemBuilder: (context, index) {
                                    ListtextTwoItemModel model = controller
                                        .customerCarePageFullModelObj
                                        .value
                                        .listtextTwoItemList[index];
                                    return ListtextTwoItemWidget(model);
                                  }))),
                          CustomButton(
                              width: 375,
                              text: "msg_view_all_franchises".tr,
                              margin: getMargin(top: 34),
                              shape: ButtonShape.Square,
                              fontStyle: ButtonFontStyle.MontserratBold16,
                              alignment: Alignment.centerLeft)
                        ])))));
  }

  onTapArrowleft11() {
    Get.back();
  }
}
