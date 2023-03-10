import '../post_load_full_page_screen/widgets/items_item_widget.dart';
import 'controller/post_load_full_page_controller.dart';
import 'models/items_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_button.dart';
import 'package:truck_booking/widgets/custom_text_form_field.dart';

class PostLoadFullPageScreen extends GetWidget<PostLoadFullPageController> {
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
                centerTitle: true,
                title: AppbarTitle(text: "msg_post_load_details".tr)),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 16, bottom: 5),
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
                                      getPadding(left: 23, top: 22, right: 23),
                                  child: Text("lbl_vehicle_type".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 1.12)))),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                  height: getVerticalSize(160.00),
                                  width: getHorizontalSize(848.00),
                                  child: Obx(() => ListView.builder(
                                      padding: getPadding(left: 10, top: 16),
                                      scrollDirection: Axis.horizontal,
                                      physics: BouncingScrollPhysics(),
                                      itemCount: controller
                                          .postLoadFullPageModelObj
                                          .value
                                          .itemsItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ItemsItemModel model = controller
                                            .postLoadFullPageModelObj
                                            .value
                                            .itemsItemList[index];
                                        return ItemsItemWidget(model);
                                      })))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 32, right: 24),
                                  child: Text("msg_route_location".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 1.12)))),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.locationFieldController,
                              hintText: "lbl_pickup_location".tr,
                              margin: getMargin(left: 23, top: 16, right: 23),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 21, right: 22, bottom: 21),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgLocation18x18)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(18.00),
                                  minHeight: getVerticalSize(18.00))),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.locationFieldOneController,
                              hintText: "lbl_drop_location".tr,
                              margin: getMargin(left: 23, top: 16, right: 23),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 21, right: 22, bottom: 21),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgLocation18x18)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(18.00),
                                  minHeight: getVerticalSize(18.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 24, right: 24),
                                  child: Text("msg_material_weight".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 1.12)))),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.materialFieldController,
                              hintText: "msg_type_material_i_e".tr,
                              margin: getMargin(left: 23, top: 16, right: 23),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 28, top: 21, right: 22, bottom: 21),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgMail)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(18.00),
                                  minHeight: getVerticalSize(18.00))),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.weightFieldController,
                              hintText: "msg_type_weight_tons".tr,
                              margin: getMargin(left: 23, top: 10, right: 23),
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 21, right: 22, bottom: 21),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgMail)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(18.00),
                                  minHeight: getVerticalSize(18.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 23, top: 24, right: 23),
                                  child: Text("lbl_add_description".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtMontserratBold14Gray9007e
                                          .copyWith(letterSpacing: 1.12)))),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.descriptionFieldController,
                              hintText: "msg_type_description".tr,
                              margin: getMargin(left: 23, top: 16, right: 23),
                              textInputAction: TextInputAction.done,
                              suffix: Container(
                                  margin: getMargin(
                                      left: 30, top: 21, right: 20, bottom: 21),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgUser)),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(18.00),
                                  minHeight: getVerticalSize(18.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 24),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray90063))),
                          CustomButton(
                              width: 327,
                              text: "lbl_continue".tr,
                              margin: getMargin(left: 23, top: 22, right: 23))
                        ])))));
  }

  onTapArrowleft3() {
    Get.back();
  }
}
