import 'dart:math';

import 'package:like_button/like_button.dart';

import '../controller/favorites_page_controller.dart';
import '../models/favorites_page_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

// ignore: must_be_immutable
class FavoritesPageItemWidget extends StatelessWidget {
  FavoritesPageItemWidget(this.favoritesPageItemModelObj);

  FavoritesPageItemModel favoritesPageItemModelObj;

  var controller = Get.find<FavoritesPageController>();

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
                svgPath: ImageConstant.imgCar5,
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
                            child: LikeButton(
                              likeBuilder: (bool isLiked) {
                                return isLiked
                                    ? Icon(Icons.favorite, color: Colors.red)
                                    : Icon(Icons.favorite_border, color: ColorConstant.gray90063);
                              },
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
                              "Quantity • ${Random().nextInt(30) + 5} Tonnes",
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
                              "${Random().nextInt(19) + 5} hr",
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
