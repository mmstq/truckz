import '../latest_lorries_page_screen/widgets/listcar_item_widget.dart';
import 'controller/latest_lorries_page_controller.dart';
import 'models/listcar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/app_bar/appbar_title.dart';

class LatestLorriesPageScreen extends GetWidget<LatestLorriesPageController> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                      AppbarTitle(text: "LATEST LORRIES")
                    ],
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: getVerticalSize(1.00),
                          width: size.width,
                          decoration:
                          BoxDecoration(color: Colors.grey.shade300))),
                ],
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 24, top: 23, right: 24),
                          child: Text("msg_latest_lorries_30".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratBold14Gray9007e
                                  .copyWith(letterSpacing: 0.84)))),
                  Padding(
                      padding: getPadding(
                          left: 24, top: 21, right: size.width * 0.05),
                      child: Obx(() => ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: controller.latestLorriesPageModelObj.value
                              .listcarItemList.length,
                          itemBuilder: (context, index) {
                            ListcarItemModel model = controller
                                .latestLorriesPageModelObj
                                .value
                                .listcarItemList[index];
                            return ListcarItemWidget(
                                onPress: () => Get.toNamed(
                                    AppRoutes.lorryDetailPublicPageScreen),
                                listcarItemModelObj: model);
                          })))
                ]))));
  }

}
