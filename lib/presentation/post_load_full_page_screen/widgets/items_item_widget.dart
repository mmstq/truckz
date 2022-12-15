import '../controller/post_load_full_page_controller.dart';
import '../models/items_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

// ignore: must_be_immutable
class ItemsItemWidget extends StatelessWidget {
  ItemsItemWidget(this.itemsItemModelObj);

  ItemsItemModel itemsItemModelObj;

  var controller = Get.find<PostLoadFullPageController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 16,
          ),
          decoration: AppDecoration.outlineGray90019.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder17,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 12,
                  right: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: Text(
                        "lbl_truck2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtMontserratBold12.copyWith(
                          letterSpacing: 0.48,
                        ),
                      ),
                    ),
                    Container(
                      decoration: AppDecoration.fillAmberA400.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder8,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: getSize(
                              6.00,
                            ),
                            width: getSize(
                              6.00,
                            ),
                            margin: getMargin(
                              all: 4,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA700,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  3.00,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 30,
                  right: 12,
                  bottom: 20,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgCar65x90,
                  height: getVerticalSize(
                    65.00,
                  ),
                  width: getHorizontalSize(
                    90.00,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
