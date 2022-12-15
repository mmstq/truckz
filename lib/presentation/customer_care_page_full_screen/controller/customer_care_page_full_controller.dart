import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/customer_care_page_full_screen/models/customer_care_page_full_model.dart';

class CustomerCarePageFullController extends GetxController {
  Rx<CustomerCarePageFullModel> customerCarePageFullModelObj =
      CustomerCarePageFullModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
