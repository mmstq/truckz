import '../controller/search_lorries_page_controller.dart';
import '../models/listcar1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

// ignore: must_be_immutable
class Listcar1ItemWidget extends StatelessWidget {
  Listcar1ItemWidget(this.listcar1ItemModelObj);

  Listcar1ItemModel listcar1ItemModelObj;

  var controller = Get.find<SearchLorriesPageController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: AppDecoration.outlineGray9005f3.copyWith(
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
                bottom: 78,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgCar9,
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
                top: 15,
                right: 20,
                bottom: 13,
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
                          Padding(
                            padding: getPadding(
                              bottom: 2,
                            ),
                            child: Text(
                              "lbl_lcv_available".tr,
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
                              top: 4,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgFavorite16x18,
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
                      219.00,
                    ),
                    margin: getMargin(
                      top: 11,
                      right: 10,
                    ),
                    child: Text(
                      "msg_banglore_electronic2".tr,
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold16Gray900a2.copyWith(
                        letterSpacing: 0.64,
                      ),
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
                        top: 13,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "msg_quantity_20_tonnes".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratMedium14.copyWith(
                                letterSpacing: 0.56,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              bottom: 1,
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
      ),
    );
  }
}
