import 'package:truck_booking/core/app_export.dart';
import 'package:truck_booking/presentation/transporters_page_screen/models/transporters_page_model.dart';

class TransportersPageController extends GetxController {
  Rx<TransportersPageModel> transportersPageModelObj =
      TransportersPageModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    transportersPageModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    transportersPageModelObj.value.dropdownItemList.refresh();
  }
}
