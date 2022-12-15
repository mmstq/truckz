import '../controller/latest_lorries_page_controller.dart';
import '../models/listcar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

// ignore: must_be_immutable
class ListcarItemWidget extends StatelessWidget {
  ListcarItemWidget(this.listcarItemModelObj);

  ListcarItemModel listcarItemModelObj;

  var controller = Get.find<LatestLorriesPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: AppDecoration.outlineGray9000f1.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder17,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 18,
              top: 18,
              bottom: 79,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgCar40x40,
              height: getSize(
                40.00,
              ),
              width: getSize(
                40.00,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 17,
              top: 19,
              right: 20,
              bottom: 14,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      231.00,
                    ),
                    margin: getMargin(
                      left: 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_hyva_available".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtMontserratBold16.copyWith(
                            letterSpacing: 0.64,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 3,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgFavorite,
                            height: getVerticalSize(
                              16.00,
                            ),
                            width: getHorizontalSize(
                              18.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    175.00,
                  ),
                  margin: getMargin(
                    top: 12,
                    right: 10,
                  ),
                  child: Text(
                    "msg_banglore_electronic2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium14,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      231.00,
                    ),
                    margin: getMargin(
                      left: 1,
                      top: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 3,
                          ),
                          child: Text(
                            "msg_quantity_20_tonnes".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratSemiBold14Gray90090
                                .copyWith(
                              letterSpacing: 0.56,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 3,
                          ),
                          child: Text(
                            "lbl_21_hr".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtMontserratMedium14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
