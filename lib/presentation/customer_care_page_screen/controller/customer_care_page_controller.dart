import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/customer_care_page_screen/models/customer_care_page_model.dart';

class CustomerCarePageController extends GetxController {
  Rx<CustomerCarePageModel> customerCarePageModelObj =
      CustomerCarePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
