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
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(size.height * 0.21),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(26),
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
                            onPressed: ()=> Navigator.pop(context),
                          ),
                        ),
                        AppbarTitle(
                            text: "lbl_select_location".tr,
                            margin: getMargin(left: 24))
                      ],
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 24, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                    padding: getPadding(top: 13, bottom: 8),
                                    child: Text("SEARCH RESULTS (${controller.transportersPageModelObj.value.listprofleimgItemList.length})",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtMontserratBold14Gray90087
                                            .copyWith(letterSpacing: 1.12))),
                                CustomDropDown(
                                    width: 113,
                                    focusNode: FocusNode(),
                                    icon: Icon(Icons.keyboard_arrow_down_sharp),
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
                  ]),
            )));
  }

  onTapArrowleft4() {
    Get.back();
  }
}
