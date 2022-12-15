import '../controller/personal_profile_page_full_controller.dart';
import '../models/listratingstars1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Listratingstars1ItemWidget extends StatelessWidget {
  Listratingstars1ItemWidget(this.listratingstars1ItemModelObj);

  Listratingstars1ItemModel listratingstars1ItemModelObj;

  var controller = Get.find<PersonalProfilePageFullController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: AppDecoration.outlineGray9000c.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 17,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 1,
                      bottom: 3,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgRatingstars,
                      height: getVerticalSize(
                        13.00,
                      ),
                      width: getHorizontalSize(
                        102.00,
                      ),
                    ),
                  ),
                  Text(
                    "lbl_2_feb_2020".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium14.copyWith(
                      letterSpacing: 0.56,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 9,
              right: 16,
            ),
            child: Text(
              "lbl_awesome_service".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratSemiBold16.copyWith(
                letterSpacing: 0.64,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: getHorizontalSize(
                289.00,
              ),
              margin: getMargin(
                left: 16,
                top: 12,
                right: 16,
              ),
              child: Text(
                "msg_lorem_ipsum_dolor".tr,
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtMontserratMedium12Gray90090.copyWith(
                  letterSpacing: 0.48,
                ),
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
              top: 18,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray9005e,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 16,
                top: 15,
                right: 16,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12.00,
                          ),
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgProfileimg,
                          height: getSize(
                            40.00,
                          ),
                          width: getSize(
                            40.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 1,
                          bottom: 3,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "msg_banshidhar_rode".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold12.copyWith(
                                letterSpacing: 0.48,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 5,
                                right: 10,
                              ),
                              child: Text(
                                "msg_mumbai_maharastra".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtMontserratMedium12Gray90090
                                    .copyWith(
                                  letterSpacing: 0.48,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CustomIconButton(
                    height: 40,
                    width: 40,
                    variant: IconButtonVariant.OutlineGray9005e,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgArrowrightTeal300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
