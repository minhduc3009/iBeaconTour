import '/core/app_export.dart';
import 'package:virtuevuapp2/presentation/s1_screen/models/s1_model.dart';

class S1Controller extends GetxController {
  Rx<S1Model> s1ModelObj = S1Model().obs;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 10000), () {
      Get.toNamed(AppRoutes.s2Screen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    s1ModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    s1ModelObj.value.dropdownItemList.refresh();
  }
}
