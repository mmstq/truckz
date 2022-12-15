import '../controller/customer_care_page_full_controller.dart';
import '../models/listtext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

// ignore: must_be_immutable
class ListtextItemWidget extends StatelessWidget {
  ListtextItemWidget(this.listtextItemModelObj);

  ListtextItemModel listtextItemModelObj;

  var controller = Get.find<CustomerCarePageFullController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 14.6900005,
        bottom: 14.6900005,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  right: 10,
                ),
                child: Text(
                  "lbl_jaipur".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtMontserratSemiBold16.copyWith(
                    letterSpacing: 0.64,
                    height: 1.25,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 1,
                    top: 7,
                  ),
                  child: Text(
                    "lbl_rajasthan".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtMontserratMedium14Gray90087.copyWith(
                      letterSpacing: 0.56,
                      height: 1.29,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 99,
              top: 11,
              bottom: 13,
            ),
            child: Text(
              "lbl_91_9412345678".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtMontserratBold16Gray900.copyWith(
                letterSpacing: 0.64,
                height: 1.25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
