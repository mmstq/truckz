import 'package:flutter/cupertino.dart';
import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/customer_care_page_screen/models/customer_care_page_model.dart';

class CustomerCarePageController extends GetxController {
  Rx<CustomerCarePageModel> customerCarePageModelObj =
      CustomerCarePageModel().obs;
  ScrollController scrollController = ScrollController();

  @override
  void onReady() {
    super.onReady();
    scrollController = ScrollController();
  }

  @override
  void onClose() {
    scrollController?.dispose();
    super.onClose();
  }
}
