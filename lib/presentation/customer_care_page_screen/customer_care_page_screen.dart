import 'package:flutter_lorem/flutter_lorem.dart';

import '../../widgets/app_bar/appbar_title.dart';
import 'controller/customer_care_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:truck_booking/core/app_export.dart';

class CustomerCarePageScreen extends GetWidget<CustomerCarePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: ListView.builder(
          controller: controller.scrollController,
          itemCount: 1,
          itemBuilder: (ctx, index) {
            return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20,
                            ),
                            onPressed:onTapArrowleft10,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: Colors.grey.shade200, width: 2)),
                        ),
                        SizedBox(width: 24,),
                        AppbarTitle(text: "TERMS & CONDITIONS"),


                      ],
                    ),
                  ),

                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                      width: MediaQuery.of(context).size.width,
                      margin: getMargin(left: 1, right: 10),
                      child: Text(
                          "msg_terms_conditions3".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtMontserratBold14Gray900
                              .copyWith(
                              letterSpacing: 0.84,
                              height: 1.71))),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(24),
                      child: Text(lorem(paragraphs: 4, words: 300),
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtMontserratMedium16Gray90090
                              .copyWith(
                              letterSpacing: 0.64))),
                ]);
          }),
    ));
  }

  onTapArrowleft10() {
    Get.back();
  }
}
