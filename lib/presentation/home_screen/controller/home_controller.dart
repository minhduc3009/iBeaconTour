import 'package:virtuevuapp2/core/app_export.dart';
import 'package:virtuevuapp2/presentation/home_screen/models/home_model.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  // Rx<HomeModel> homeModelObj = HomeModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  // @override
  // void onReady() {
  //   super.onReady();
  //   Future.delayed(const Duration(milliseconds: 10000), () {
  //     Get.toNamed(AppRoutes.scanScreen);
  //   });
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    homeModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    homeModelObj.value.dropdownItemList.refresh();
  }
}
