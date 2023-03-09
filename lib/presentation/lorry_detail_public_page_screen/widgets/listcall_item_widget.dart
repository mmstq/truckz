import '../controller/lorry_detail_public_page_controller.dart';
import '../models/listcall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListcallItemWidget extends StatelessWidget {
  ListcallItemWidget(this.listcallItemModelObj);

  ListcallItemModel listcallItemModelObj;

  var controller = Get.find<LorryDetailPublicPageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 10.0,
        right: 117,
        bottom: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 48,
            width: 48,
            variant: IconButtonVariant.CustomOutlineBox,
            child: CommonImageView(
              svgPath: ImageConstant.imgCall,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 25,
              top: 2,
              bottom: 1,
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
                    "lbl_phone_no".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratBold16Gray900.copyWith(
                      letterSpacing: 0.80,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    "lbl_91_9071212000".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium14Gray90090.copyWith(
                      letterSpacing: 1.12,
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
