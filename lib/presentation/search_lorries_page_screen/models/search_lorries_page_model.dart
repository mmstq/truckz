import 'package:get/get.dart';
import 'package:truck_booking/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listcar1_item_model.dart';

class SearchLorriesPageModel {
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

  RxList<Listcar1ItemModel> listcar1ItemList =
      RxList.filled(4, Listcar1ItemModel());
}
