import '../transporters_page_screen/widgets/listprofleimg_item_widget.dart';
import 'controller/transporters_page_controller.dart';
import 'models/listprofleimg_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_iconbutton.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';
import 'package:truck_booking/widgets/app_bar/custom_app_bar.dart';
import 'package:truck_booking/widgets/custom_drop_down.dart';

class TransportersPageScreen extends GetWidget<TransportersPageController> {
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
                    onTap: onTapArrowleft4),
                title: AppbarTitle(
                    text: "lbl_transporter".tr, margin: getMargin(left: 24))),
            body: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, top: 16, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 13, bottom: 8),
                                    child: Text("msg_search_results_230".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratBold14Gray90087
                                            .copyWith(letterSpacing: 1.12))),
                                CustomDropDown(
                                    width: 113,
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 10, right: 18),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgArrowleft)),
                                    hintText: "lbl_popular".tr,
                                    variant: DropDownVariant.OutlineGray90063,
                                    items: controller.transportersPageModelObj
                                        .value.dropdownItemList,
                                    onChanged: (value) {
                                      controller.onSelected(value);
                                    })
                              ]))),
                  Container(
                      height: getVerticalSize(1.00),
                      width: size.width,
                      margin: getMargin(top: 24),
                      decoration:
                          BoxDecoration(color: ColorConstant.gray90063)),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(
                              left: 24, top: 23, right: 24, bottom: 12),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.transportersPageModelObj
                                  .value.listprofleimgItemList.length,
                              itemBuilder: (context, index) {
                                ListprofleimgItemModel model = controller
                                    .transportersPageModelObj
                                    .value
                                    .listprofleimgItemList[index];
                                return ListprofleimgItemWidget(model);
                              }))))
                ])));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
