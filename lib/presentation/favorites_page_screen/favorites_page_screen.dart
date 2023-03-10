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
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(size.height * 0.1),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            left: 26, top: 16, bottom: 16, right: 26),
                        height: 50,
                        width: 50,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 20,
                          ),
                          onPressed:()=> Navigator.pop(context),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(14),
                            border: Border.all(
                                color: Colors.grey.shade200, width: 2)),
                      ),
                      AppbarTitle(text: "lbl_favourites".tr)
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                          BoxDecoration(color: ColorConstant.gray90063))),
                ],
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(left: 24, top: 22, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 13, bottom: 8),
                                      child: Text(
                                          "FAVORITE ITEMS (${controller.favoritesPageModelObj.value.favoritesPageItemList.length})",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratBold14Gray9007e
                                              .copyWith(letterSpacing: 1.12))),
                                  CustomDropDown(
                                      width: 119,
                                      focusNode: FocusNode(),
                                      icon: Container(
                                          margin: getMargin(left: 6, right: 12),
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
                                left: 24,
                                top: 24,
                                right: size.width * 0.05,
                                bottom: 12),
                            child: Obx(() => ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: controller.favoritesPageModelObj
                                    .value.favoritesPageItemList.length,
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
