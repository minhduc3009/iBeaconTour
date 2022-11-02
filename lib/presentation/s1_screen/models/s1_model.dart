import 'package:get/get.dart';
import 'package:virtuevuapp2/data/models/selectionPopupModel/selection_popup_model.dart';
import 'listrectanglenineteen_item_model.dart';

class S1Model {
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

  RxList<ListrectanglenineteenItemModel> listrectanglenineteenItemList =
      RxList.filled(3, ListrectanglenineteenItemModel());
}
