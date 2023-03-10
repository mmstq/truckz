import '../favorites_page_screen/widgets/favorites_page_item_widget.dart';
import 'controller/favorites_page_controller.dart';
import 'models/favorites_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_drop_down.dart';

class FavoritesPageScreen extends GetWidget<FavoritesPageController> {
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
                title: AppbarTitle(
                    text: "lbl_favourites".tr, margin: getMargin(left: 24))),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: getVerticalSize(1.00),
                        width: size.width,
                        margin: getMargin(top: 16),
                        decoration:
                            BoxDecoration(color: ColorConstant.gray90063)),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 24, top: 22, right: 24),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 8),
                                      child: Text("msg_favourite_items".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14Gray9007e
                                              .copyWith(letterSpacing: 1.12))),
                                  CustomDropDown(
                                      width: 119,
                                      focusNode: FocusNode(),
                                      icon: Container(
                                          margin: getMargin(left: 10, right: 12),
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowleft)),
                                      hintText: "lbl_relevance".tr,
                                      items: controller.favoritesPageModelObj
                                          .value.dropdownItemList,
                                      onChanged: (value) {
                                        controller.onSelected(value);
                                      })
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(
                                left: 24, top: 24, right: size.width * 0.05, bottom: 12),
                            child: Obx(() => ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.favoritesPageModelObj.value
                                    .favoritesPageItemList.length,
                                itemBuilder: (context, index) {
                                  FavoritesPageItemModel model = controller
                                      .favoritesPageModelObj
                                      .value
                                      .favoritesPageItemList[index];
                                  return FavoritesPageItemWidget(model);
                                }))))
                  ]),
            )));
  }

  onTapArrowleft7() {
    Get.back();
  }
}
