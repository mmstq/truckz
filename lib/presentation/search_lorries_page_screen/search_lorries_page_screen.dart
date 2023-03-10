import '../search_lorries_page_screen/widgets/listcar1_item_widget.dart';
import 'controller/search_lorries_page_controller.dart';
import 'models/listcar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_drop_down.dart';
import 'package:truck_booking/widgets/custom_search_view.dart';

class SearchLorriesPageScreen extends GetWidget<SearchLorriesPageController> {
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
                    text: "lbl_search".tr, margin: getMargin(left: 24))),
            body: SingleChildScrollView(
                child: Padding(
                    padding: getPadding(top: 16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomSearchView(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.searchFieldController,
                              hintText: "lbl_lcv".tr,
                              margin: getMargin(left: 24, right: 24),
                              alignment: Alignment.center,
                              suffix: Padding(
                                  padding: EdgeInsets.only(
                                      right: getHorizontalSize(15.00)),
                                  child: IconButton(
                                      onPressed: () {
                                        controller.searchFieldController.clear;
                                      },
                                      icon: Icon(Icons.clear,
                                          color: Colors.grey.shade600))),
                              suffixConstraints: BoxConstraints(
                                  minWidth: getHorizontalSize(16.00),
                                  minHeight: getVerticalSize(16.00))),
                          Container(
                              height: getVerticalSize(1.00),
                              width: size.width,
                              margin: getMargin(top: 24),
                              decoration: BoxDecoration(
                                  color: ColorConstant.gray90063)),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 23, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 13, bottom: 8),
                                            child: Text(
                                                "msg_search_results_230".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratBold14Gray9007e
                                                    .copyWith(
                                                        letterSpacing: 0.84))),
                                        CustomDropDown(
                                            width: 119,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 10, right: 12),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowleft)),
                                            hintText: "lbl_relevance".tr,
                                            items: controller
                                                .searchLorriesPageModelObj
                                                .value
                                                .dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            })
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 24, right: 24),
                                  child: Obx(() => ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller
                                          .searchLorriesPageModelObj
                                          .value
                                          .listcar1ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listcar1ItemModel model = controller
                                            .searchLorriesPageModelObj
                                            .value
                                            .listcar1ItemList[index];
                                        return Listcar1ItemWidget(model);
                                      }))))
                        ])))));
  }

  onTapArrowleft8() {
    Get.back();
  }
}
