import '../controller/personal_profile_page_full_controller.dart';
import '../models/listcontrast_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListcontrastItemWidget extends StatelessWidget {
  ListcontrastItemWidget(this.listcontrastItemModelObj);

  ListcontrastItemModel listcontrastItemModelObj;

  var controller = Get.find<PersonalProfilePageFullController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 12.845001,
        bottom: 12.845001,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48,
            width: 48,
            margin: getMargin(
              top: 12,
              bottom: 6,
            ),
            variant: IconButtonVariant.OutlineGray9005f,
            child: CommonImageView(
              svgPath: ImageConstant.imgContrast,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    "lbl_email_address".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold16.copyWith(
                      letterSpacing: 0.80,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    193.00,
                  ),
                  margin: getMargin(
                    top: 13,
                  ),
                  child: Text(
                    "msg_bluebirdpackers_gmail_com2".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium14Gray90090.copyWith(
                      letterSpacing: 1.12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 41,
              top: 14,
              bottom: 32,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgEdit,
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
