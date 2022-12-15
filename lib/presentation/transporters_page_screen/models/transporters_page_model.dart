import 'package:get/get.dart';
import 'package:truck_booking/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listprofleimg_item_model.dart';

class TransportersPageModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: 1,
      title: "test",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "test1",
    ),
    SelectionPopupModel(
      id: 3,
      title: "test2",
    )
  ].obs;

  RxList<ListprofleimgItemModel> listprofleimgItemList =
      RxList.filled(4, ListprofleimgItemModel());
}
