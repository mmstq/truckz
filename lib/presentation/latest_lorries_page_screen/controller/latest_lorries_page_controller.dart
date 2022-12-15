import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/latest_lorries_page_screen/models/latest_lorries_page_model.dart';

class LatestLorriesPageController extends GetxController {
  Rx<LatestLorriesPageModel> latestLorriesPageModelObj =
      LatestLorriesPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
