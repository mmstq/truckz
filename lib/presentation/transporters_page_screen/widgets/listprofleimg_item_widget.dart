import '../controller/transporters_page_controller.dart';
import '../models/listprofleimg_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

// ignore: must_be_immutable
class ListprofleimgItemWidget extends StatelessWidget {
  ListprofleimgItemWidget(this.listprofleimgItemModelObj);

  ListprofleimgItemModel listprofleimgItemModelObj;

  var controller = Get.find<TransportersPageController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: AppDecoration.outlineGray900191.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 14,
                  right: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgImage,
                          height: getSize(
                            48.00,
                          ),
                          width: getSize(
                            48.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        150.00,
                      ),
                      margin: getMargin(
                        top: 6,
                        bottom: 8,
                      ),
                      child: Text(
                        "msg_banshidhar_road_lines".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtMontserratSemiBold16Gray900a2.copyWith(
                          letterSpacing: 0.64,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 3,
                        bottom: 34,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgStar,
                        height: getVerticalSize(
                          11.00,
                        ),
                        width: getHorizontalSize(
                          12.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        bottom: 29,
                      ),
                      child: Text(
                        "lbl_4_2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtMontserratSemiBold16AmberA400.copyWith(
                          letterSpacing: 0.70,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: getHorizontalSize(
                327.00,
              ),
              margin: getMargin(
                top: 14,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 18,
                top: 13,
                right: 18,
                bottom: 14,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 7,
                      bottom: 7,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgComputer16x19,
                      height: getVerticalSize(
                        16.00,
                      ),
                      width: getHorizontalSize(
                        19.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 5,
                      bottom: 6,
                    ),
                    child: Text(
                      "lbl_240_lorries".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold14,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      30.00,
                    ),
                    width: getHorizontalSize(
                      1.00,
                    ),
                    margin: getMargin(
                      left: 27,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray90063,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 17,
                      top: 6,
                      bottom: 6,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgClock,
                      height: getSize(
                        18.00,
                      ),
                      width: getSize(
                        18.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 10,
                      top: 4,
                      bottom: 7,
                    ),
                    child: Text(
                      "lbl_since_2013".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtMontserratSemiBold14,
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
